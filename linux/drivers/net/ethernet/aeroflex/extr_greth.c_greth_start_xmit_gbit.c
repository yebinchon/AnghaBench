
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct sk_buff {scalar_t__ len; scalar_t__ ip_summed; int data; } ;
struct TYPE_3__ {int tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct greth_private {size_t tx_next; int dev; struct greth_bd* tx_bd_base; int devlock; struct sk_buff** tx_skbuff; int tx_last; } ;
struct greth_bd {int stat; int addr; } ;
typedef int skb_frag_t ;
typedef int netdev_tx_t ;
struct TYPE_4__ {int nr_frags; int * frags; } ;


 scalar_t__ CHECKSUM_PARTIAL ;
 int DMA_TO_DEVICE ;
 int GRETH_BD_EN ;
 int GRETH_BD_IE ;
 int GRETH_BD_LEN ;
 int GRETH_BD_WR ;
 int GRETH_TXBD_CSALL ;
 int GRETH_TXBD_MORE ;
 int GRETH_TXBD_NUM_MASK ;
 scalar_t__ MAX_FRAME_SIZE ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int NEXT_TX (int) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int dev_warn (int ,char*) ;
 int dma_map_single (int ,int ,int,int ) ;
 int dma_mapping_error (int ,int) ;
 int dma_unmap_single (int ,int,int,int ) ;
 int greth_enable_tx_and_irq (struct greth_private*) ;
 int greth_num_free_bds (int ,size_t) ;
 int greth_print_tx_packet (struct sk_buff*) ;
 int greth_read_bd (int *) ;
 int greth_write_bd (int *,int) ;
 scalar_t__ net_ratelimit () ;
 struct greth_private* netdev_priv (struct net_device*) ;
 scalar_t__ netif_msg_pktdata (struct greth_private*) ;
 int netif_stop_queue (struct net_device*) ;
 int rmb () ;
 int skb_frag_dma_map (int ,int *,int ,int,int ) ;
 int skb_frag_size (int *) ;
 int skb_headlen (struct sk_buff*) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;
 int wmb () ;

__attribute__((used)) static netdev_tx_t
greth_start_xmit_gbit(struct sk_buff *skb, struct net_device *dev)
{
 struct greth_private *greth = netdev_priv(dev);
 struct greth_bd *bdp;
 u32 status, dma_addr;
 int curr_tx, nr_frags, i, err = NETDEV_TX_OK;
 unsigned long flags;
 u16 tx_last;

 nr_frags = skb_shinfo(skb)->nr_frags;
 tx_last = greth->tx_last;
 rmb();

 if (greth_num_free_bds(tx_last, greth->tx_next) < nr_frags + 1) {
  netif_stop_queue(dev);
  err = NETDEV_TX_BUSY;
  goto out;
 }

 if (netif_msg_pktdata(greth))
  greth_print_tx_packet(skb);

 if (unlikely(skb->len > MAX_FRAME_SIZE)) {
  dev->stats.tx_errors++;
  goto out;
 }


 greth->tx_skbuff[greth->tx_next] = skb;


 if (nr_frags != 0)
  status = GRETH_TXBD_MORE;
 else
  status = GRETH_BD_IE;

 if (skb->ip_summed == CHECKSUM_PARTIAL)
  status |= GRETH_TXBD_CSALL;
 status |= skb_headlen(skb) & GRETH_BD_LEN;
 if (greth->tx_next == GRETH_TXBD_NUM_MASK)
  status |= GRETH_BD_WR;


 bdp = greth->tx_bd_base + greth->tx_next;
 greth_write_bd(&bdp->stat, status);
 dma_addr = dma_map_single(greth->dev, skb->data, skb_headlen(skb), DMA_TO_DEVICE);

 if (unlikely(dma_mapping_error(greth->dev, dma_addr)))
  goto map_error;

 greth_write_bd(&bdp->addr, dma_addr);

 curr_tx = NEXT_TX(greth->tx_next);


 for (i = 0; i < nr_frags; i++) {
  skb_frag_t *frag = &skb_shinfo(skb)->frags[i];
  greth->tx_skbuff[curr_tx] = ((void*)0);
  bdp = greth->tx_bd_base + curr_tx;

  status = GRETH_BD_EN;
  if (skb->ip_summed == CHECKSUM_PARTIAL)
   status |= GRETH_TXBD_CSALL;
  status |= skb_frag_size(frag) & GRETH_BD_LEN;


  if (curr_tx == GRETH_TXBD_NUM_MASK)
   status |= GRETH_BD_WR;


  if (i < nr_frags - 1)
   status |= GRETH_TXBD_MORE;
  else
   status |= GRETH_BD_IE;

  greth_write_bd(&bdp->stat, status);

  dma_addr = skb_frag_dma_map(greth->dev, frag, 0, skb_frag_size(frag),
         DMA_TO_DEVICE);

  if (unlikely(dma_mapping_error(greth->dev, dma_addr)))
   goto frag_map_error;

  greth_write_bd(&bdp->addr, dma_addr);

  curr_tx = NEXT_TX(curr_tx);
 }

 wmb();


 bdp = greth->tx_bd_base + greth->tx_next;
 greth_write_bd(&bdp->stat,
         greth_read_bd(&bdp->stat) | GRETH_BD_EN);

 spin_lock_irqsave(&greth->devlock, flags);
 greth->tx_next = curr_tx;
 greth_enable_tx_and_irq(greth);
 spin_unlock_irqrestore(&greth->devlock, flags);

 return NETDEV_TX_OK;

frag_map_error:

 for (i = 0; greth->tx_next + i != curr_tx; i++) {
  bdp = greth->tx_bd_base + greth->tx_next + i;
  dma_unmap_single(greth->dev,
     greth_read_bd(&bdp->addr),
     greth_read_bd(&bdp->stat) & GRETH_BD_LEN,
     DMA_TO_DEVICE);
  greth_write_bd(&bdp->stat, 0);
 }
map_error:
 if (net_ratelimit())
  dev_warn(greth->dev, "Could not create TX DMA mapping\n");
 dev_kfree_skb(skb);
out:
 return err;
}
