
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int protocol; struct net_device* dev; scalar_t__ data; } ;
struct net_device_stats {unsigned int rx_bytes; int rx_packets; int rx_dropped; int rx_errors; int rx_length_errors; } ;
struct net_device {int dev; struct net_device_stats stats; } ;
struct buffer_state {struct sk_buff* skb; } ;
struct arc_emac_priv {unsigned int last_rx_bd; struct arc_emac_bd* rxbd; struct buffer_state* rx_buff; } ;
struct arc_emac_bd {void* info; void* data; } ;
typedef unsigned int dma_addr_t ;


 int DMA_FROM_DEVICE ;
 unsigned int EMAC_BUFFER_SIZE ;
 unsigned int FIRST_OR_LAST_MASK ;
 unsigned int FOR_EMAC ;
 unsigned int LEN_MASK ;
 unsigned int OWN_MASK ;
 unsigned int RX_BD_NUM ;
 void* cpu_to_le32 (unsigned int) ;
 int dev_kfree_skb (struct sk_buff*) ;
 unsigned int dma_map_single (int *,void*,unsigned int,int ) ;
 scalar_t__ dma_mapping_error (int *,unsigned int) ;
 int dma_unmap_addr (struct buffer_state*,unsigned int) ;
 int dma_unmap_addr_set (struct buffer_state*,unsigned int,unsigned int) ;
 int dma_unmap_len (struct buffer_state*,int ) ;
 int dma_unmap_len_set (struct buffer_state*,int ,unsigned int) ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 unsigned int le32_to_cpu (void*) ;
 int len ;
 scalar_t__ net_ratelimit () ;
 struct sk_buff* netdev_alloc_skb_ip_align (struct net_device*,unsigned int) ;
 int netdev_err (struct net_device*,char*) ;
 struct arc_emac_priv* netdev_priv (struct net_device*) ;
 int netif_receive_skb (struct sk_buff*) ;
 int skb_put (struct sk_buff*,unsigned int) ;
 scalar_t__ unlikely (int) ;
 int wmb () ;

__attribute__((used)) static int arc_emac_rx(struct net_device *ndev, int budget)
{
 struct arc_emac_priv *priv = netdev_priv(ndev);
 unsigned int work_done;

 for (work_done = 0; work_done < budget; work_done++) {
  unsigned int *last_rx_bd = &priv->last_rx_bd;
  struct net_device_stats *stats = &ndev->stats;
  struct buffer_state *rx_buff = &priv->rx_buff[*last_rx_bd];
  struct arc_emac_bd *rxbd = &priv->rxbd[*last_rx_bd];
  unsigned int pktlen, info = le32_to_cpu(rxbd->info);
  struct sk_buff *skb;
  dma_addr_t addr;

  if (unlikely((info & OWN_MASK) == FOR_EMAC))
   break;




  *last_rx_bd = (*last_rx_bd + 1) % RX_BD_NUM;

  if (unlikely((info & FIRST_OR_LAST_MASK) !=
        FIRST_OR_LAST_MASK)) {



   if (net_ratelimit())
    netdev_err(ndev, "incomplete packet received\n");


   rxbd->info = cpu_to_le32(FOR_EMAC | EMAC_BUFFER_SIZE);
   stats->rx_errors++;
   stats->rx_length_errors++;
   continue;
  }





  skb = netdev_alloc_skb_ip_align(ndev, EMAC_BUFFER_SIZE);
  if (unlikely(!skb)) {
   if (net_ratelimit())
    netdev_err(ndev, "cannot allocate skb\n");

   rxbd->info = cpu_to_le32(FOR_EMAC | EMAC_BUFFER_SIZE);
   stats->rx_errors++;
   stats->rx_dropped++;
   continue;
  }

  addr = dma_map_single(&ndev->dev, (void *)skb->data,
          EMAC_BUFFER_SIZE, DMA_FROM_DEVICE);
  if (dma_mapping_error(&ndev->dev, addr)) {
   if (net_ratelimit())
    netdev_err(ndev, "cannot map dma buffer\n");
   dev_kfree_skb(skb);

   rxbd->info = cpu_to_le32(FOR_EMAC | EMAC_BUFFER_SIZE);
   stats->rx_errors++;
   stats->rx_dropped++;
   continue;
  }


  dma_unmap_single(&ndev->dev, dma_unmap_addr(rx_buff, addr),
     dma_unmap_len(rx_buff, len), DMA_FROM_DEVICE);

  pktlen = info & LEN_MASK;
  stats->rx_packets++;
  stats->rx_bytes += pktlen;
  skb_put(rx_buff->skb, pktlen);
  rx_buff->skb->dev = ndev;
  rx_buff->skb->protocol = eth_type_trans(rx_buff->skb, ndev);

  netif_receive_skb(rx_buff->skb);

  rx_buff->skb = skb;
  dma_unmap_addr_set(rx_buff, addr, addr);
  dma_unmap_len_set(rx_buff, len, EMAC_BUFFER_SIZE);

  rxbd->data = cpu_to_le32(addr);


  wmb();


  rxbd->info = cpu_to_le32(FOR_EMAC | EMAC_BUFFER_SIZE);
 }

 return work_done;
}
