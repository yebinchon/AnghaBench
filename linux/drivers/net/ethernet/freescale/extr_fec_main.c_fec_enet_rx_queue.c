
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ushort ;
typedef size_t u16 ;
struct vlan_hdr {int h_vlan_TCI; } ;
struct sk_buff {int ip_summed; int protocol; int * data; } ;
struct TYPE_5__ {int rx_bytes; int rx_dropped; int rx_packets; int rx_frame_errors; int rx_crc_errors; int rx_length_errors; int rx_fifo_errors; int rx_errors; } ;
struct net_device {int features; TYPE_1__ stats; } ;
struct fec_enet_private {int quirks; int csum_flags; scalar_t__ bufdesc_ex; scalar_t__ rx_align; TYPE_2__* pdev; int napi; scalar_t__ hwts_rx_en; scalar_t__ hwp; struct fec_enet_priv_rx_q** rx_queue; } ;
struct TYPE_7__ {struct bufdesc* cur; scalar_t__ reg_desc_active; } ;
struct fec_enet_priv_rx_q {TYPE_3__ bd; struct sk_buff** rx_skbuff; } ;
struct bufdesc_ex {int cbd_esc; scalar_t__ cbd_bdu; scalar_t__ cbd_prot; int ts; } ;
struct bufdesc {int cbd_sc; int cbd_bufaddr; int cbd_datlen; } ;
typedef int __u8 ;
struct TYPE_6__ {int dev; } ;


 unsigned short BD_ENET_RX_CL ;
 unsigned short BD_ENET_RX_CR ;
 unsigned short BD_ENET_RX_EMPTY ;
 int BD_ENET_RX_INT ;
 unsigned short BD_ENET_RX_LAST ;
 unsigned short BD_ENET_RX_LG ;
 unsigned short BD_ENET_RX_NO ;
 unsigned short BD_ENET_RX_OV ;
 unsigned short BD_ENET_RX_SH ;
 unsigned short BD_ENET_RX_STATS ;
 int BD_ENET_RX_VLAN ;
 int CHECKSUM_UNNECESSARY ;
 int DMA_FROM_DEVICE ;
 int ETH_ALEN ;
 int ETH_HLEN ;
 int ETH_P_8021Q ;
 size_t FEC_ENET_GET_QUQUE (size_t) ;
 int FEC_ENET_RXF ;
 scalar_t__ FEC_ENET_RX_FRSIZE ;
 scalar_t__ FEC_IEVENT ;
 int FEC_QUIRK_HAS_RACC ;
 int FEC_QUIRK_SWAP_FRAME ;
 int FLAG_RX_CSUM_ENABLED ;
 int FLAG_RX_CSUM_ERROR ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NET_IP_ALIGN ;
 int VLAN_HLEN ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,int ,size_t) ;
 int cpu_to_fec16 (unsigned short) ;
 int cpu_to_fec32 (int ) ;
 int dma_sync_single_for_device (int *,int ,scalar_t__,int ) ;
 int dma_unmap_single (int *,int ,scalar_t__,int ) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 void* fec16_to_cpu (int ) ;
 int fec32_to_cpu (int ) ;
 int fec_enet_copybreak (struct net_device*,struct sk_buff**,struct bufdesc*,int,int) ;
 int fec_enet_get_bd_index (struct bufdesc*,TYPE_3__*) ;
 struct bufdesc* fec_enet_get_nextdesc (struct bufdesc*,TYPE_3__*) ;
 int fec_enet_hwtstamp (struct fec_enet_private*,int ,int ) ;
 int fec_enet_new_rxbdp (struct net_device*,struct bufdesc*,struct sk_buff*) ;
 int flush_cache_all () ;
 int htons (int ) ;
 int memmove (int *,int *,int) ;
 int napi_gro_receive (int *,struct sk_buff*) ;
 struct sk_buff* netdev_alloc_skb (struct net_device*,scalar_t__) ;
 int netdev_err (struct net_device*,char*) ;
 struct fec_enet_private* netdev_priv (struct net_device*) ;
 size_t ntohs (int ) ;
 int prefetch (int *) ;
 int skb_checksum_none_assert (struct sk_buff*) ;
 int skb_hwtstamps (struct sk_buff*) ;
 int skb_pull (struct sk_buff*,int) ;
 int * skb_pull_inline (struct sk_buff*,int) ;
 int skb_put (struct sk_buff*,int) ;
 int swap_buffer (int *,int) ;
 scalar_t__ unlikely (int) ;
 int wmb () ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int
fec_enet_rx_queue(struct net_device *ndev, int budget, u16 queue_id)
{
 struct fec_enet_private *fep = netdev_priv(ndev);
 struct fec_enet_priv_rx_q *rxq;
 struct bufdesc *bdp;
 unsigned short status;
 struct sk_buff *skb_new = ((void*)0);
 struct sk_buff *skb;
 ushort pkt_len;
 __u8 *data;
 int pkt_received = 0;
 struct bufdesc_ex *ebdp = ((void*)0);
 bool vlan_packet_rcvd = 0;
 u16 vlan_tag;
 int index = 0;
 bool is_copybreak;
 bool need_swap = fep->quirks & FEC_QUIRK_SWAP_FRAME;




 queue_id = FEC_ENET_GET_QUQUE(queue_id);
 rxq = fep->rx_queue[queue_id];




 bdp = rxq->bd.cur;

 while (!((status = fec16_to_cpu(bdp->cbd_sc)) & BD_ENET_RX_EMPTY)) {

  if (pkt_received >= budget)
   break;
  pkt_received++;

  writel(FEC_ENET_RXF, fep->hwp + FEC_IEVENT);


  status ^= BD_ENET_RX_LAST;
  if (status & (BD_ENET_RX_LG | BD_ENET_RX_SH | BD_ENET_RX_NO |
      BD_ENET_RX_CR | BD_ENET_RX_OV | BD_ENET_RX_LAST |
      BD_ENET_RX_CL)) {
   ndev->stats.rx_errors++;
   if (status & BD_ENET_RX_OV) {

    ndev->stats.rx_fifo_errors++;
    goto rx_processing_done;
   }
   if (status & (BD_ENET_RX_LG | BD_ENET_RX_SH
      | BD_ENET_RX_LAST)) {

    ndev->stats.rx_length_errors++;
    if (status & BD_ENET_RX_LAST)
     netdev_err(ndev, "rcv is not +last\n");
   }
   if (status & BD_ENET_RX_CR)
    ndev->stats.rx_crc_errors++;

   if (status & (BD_ENET_RX_NO | BD_ENET_RX_CL))
    ndev->stats.rx_frame_errors++;
   goto rx_processing_done;
  }


  ndev->stats.rx_packets++;
  pkt_len = fec16_to_cpu(bdp->cbd_datlen);
  ndev->stats.rx_bytes += pkt_len;

  index = fec_enet_get_bd_index(bdp, &rxq->bd);
  skb = rxq->rx_skbuff[index];





  is_copybreak = fec_enet_copybreak(ndev, &skb, bdp, pkt_len - 4,
        need_swap);
  if (!is_copybreak) {
   skb_new = netdev_alloc_skb(ndev, FEC_ENET_RX_FRSIZE);
   if (unlikely(!skb_new)) {
    ndev->stats.rx_dropped++;
    goto rx_processing_done;
   }
   dma_unmap_single(&fep->pdev->dev,
      fec32_to_cpu(bdp->cbd_bufaddr),
      FEC_ENET_RX_FRSIZE - fep->rx_align,
      DMA_FROM_DEVICE);
  }

  prefetch(skb->data - NET_IP_ALIGN);
  skb_put(skb, pkt_len - 4);
  data = skb->data;

  if (!is_copybreak && need_swap)
   swap_buffer(data, pkt_len);


  if (fep->quirks & FEC_QUIRK_HAS_RACC)
   data = skb_pull_inline(skb, 2);



  ebdp = ((void*)0);
  if (fep->bufdesc_ex)
   ebdp = (struct bufdesc_ex *)bdp;


  vlan_packet_rcvd = 0;
  if ((ndev->features & NETIF_F_HW_VLAN_CTAG_RX) &&
      fep->bufdesc_ex &&
      (ebdp->cbd_esc & cpu_to_fec32(BD_ENET_RX_VLAN))) {

   struct vlan_hdr *vlan_header =
     (struct vlan_hdr *) (data + ETH_HLEN);
   vlan_tag = ntohs(vlan_header->h_vlan_TCI);

   vlan_packet_rcvd = 1;

   memmove(skb->data + VLAN_HLEN, data, ETH_ALEN * 2);
   skb_pull(skb, VLAN_HLEN);
  }

  skb->protocol = eth_type_trans(skb, ndev);


  if (fep->hwts_rx_en && fep->bufdesc_ex)
   fec_enet_hwtstamp(fep, fec32_to_cpu(ebdp->ts),
       skb_hwtstamps(skb));

  if (fep->bufdesc_ex &&
      (fep->csum_flags & FLAG_RX_CSUM_ENABLED)) {
   if (!(ebdp->cbd_esc & cpu_to_fec32(FLAG_RX_CSUM_ERROR))) {

    skb->ip_summed = CHECKSUM_UNNECESSARY;
   } else {
    skb_checksum_none_assert(skb);
   }
  }


  if (vlan_packet_rcvd)
   __vlan_hwaccel_put_tag(skb,
            htons(ETH_P_8021Q),
            vlan_tag);

  napi_gro_receive(&fep->napi, skb);

  if (is_copybreak) {
   dma_sync_single_for_device(&fep->pdev->dev,
         fec32_to_cpu(bdp->cbd_bufaddr),
         FEC_ENET_RX_FRSIZE - fep->rx_align,
         DMA_FROM_DEVICE);
  } else {
   rxq->rx_skbuff[index] = skb_new;
   fec_enet_new_rxbdp(ndev, bdp, skb_new);
  }

rx_processing_done:

  status &= ~BD_ENET_RX_STATS;


  status |= BD_ENET_RX_EMPTY;

  if (fep->bufdesc_ex) {
   struct bufdesc_ex *ebdp = (struct bufdesc_ex *)bdp;

   ebdp->cbd_esc = cpu_to_fec32(BD_ENET_RX_INT);
   ebdp->cbd_prot = 0;
   ebdp->cbd_bdu = 0;
  }



  wmb();
  bdp->cbd_sc = cpu_to_fec16(status);


  bdp = fec_enet_get_nextdesc(bdp, &rxq->bd);





  writel(0, rxq->bd.reg_desc_active);
 }
 rxq->bd.cur = bdp;
 return pkt_received;
}
