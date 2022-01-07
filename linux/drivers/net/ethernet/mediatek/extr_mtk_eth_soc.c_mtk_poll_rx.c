
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int protocol; int ip_summed; struct net_device* dev; } ;
struct TYPE_3__ {int rx_dropped; } ;
struct net_device {int features; TYPE_1__ stats; } ;
struct napi_struct {int dummy; } ;
struct mtk_rx_ring {int calc_idx; int buf_size; int ** data; int frag_size; struct mtk_rx_dma* dma; int dma_size; } ;
struct mtk_rx_dma {int rxd2; int rxd4; unsigned int rxd1; int rxd3; } ;
struct mtk_eth {int ip_align; int rx_dma_l4_valid; TYPE_2__* soc; int dev; int state; struct net_device** netdev; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_4__ {int caps; } ;


 int CHECKSUM_UNNECESSARY ;
 int DMA_FROM_DEVICE ;
 int ETH_P_8021Q ;
 scalar_t__ MTK_HAS_CAPS (int ,int ) ;
 int MTK_MAC_COUNT ;
 int MTK_RESETTING ;
 int MTK_SOC_MT7628 ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NET_IP_ALIGN ;
 int NET_SKB_PAD ;
 int NEXT_DESP_IDX (int,int ) ;
 int RX_DMA_DONE ;
 int RX_DMA_FPORT_MASK ;
 int RX_DMA_FPORT_SHIFT ;
 unsigned int RX_DMA_GET_PLEN0 (int) ;
 int RX_DMA_LSO ;
 int RX_DMA_PLEN0 (int ) ;
 scalar_t__ RX_DMA_VID (int ) ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,int ,scalar_t__) ;
 struct sk_buff* build_skb (int *,int ) ;
 scalar_t__ dma_map_single (int ,int *,int ,int ) ;
 int dma_mapping_error (int ,scalar_t__) ;
 int dma_unmap_single (int ,unsigned int,int ,int ) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int htons (int ) ;
 struct mtk_rx_ring* mtk_get_rx_ring (struct mtk_eth*) ;
 int mtk_rx_get_desc (struct mtk_rx_dma*,struct mtk_rx_dma*) ;
 int mtk_update_rx_cpu_idx (struct mtk_eth*) ;
 int * napi_alloc_frag (int ) ;
 int napi_gro_receive (struct napi_struct*,struct sk_buff*) ;
 int skb_checksum_none_assert (struct sk_buff*) ;
 int skb_free_frag (int *) ;
 int skb_put (struct sk_buff*,unsigned int) ;
 int skb_record_rx_queue (struct sk_buff*,int ) ;
 int skb_reserve (struct sk_buff*,int) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;
 int wmb () ;

__attribute__((used)) static int mtk_poll_rx(struct napi_struct *napi, int budget,
         struct mtk_eth *eth)
{
 struct mtk_rx_ring *ring;
 int idx;
 struct sk_buff *skb;
 u8 *data, *new_data;
 struct mtk_rx_dma *rxd, trxd;
 int done = 0;

 while (done < budget) {
  struct net_device *netdev;
  unsigned int pktlen;
  dma_addr_t dma_addr;
  int mac;

  ring = mtk_get_rx_ring(eth);
  if (unlikely(!ring))
   goto rx_done;

  idx = NEXT_DESP_IDX(ring->calc_idx, ring->dma_size);
  rxd = &ring->dma[idx];
  data = ring->data[idx];

  mtk_rx_get_desc(&trxd, rxd);
  if (!(trxd.rxd2 & RX_DMA_DONE))
   break;


  if (MTK_HAS_CAPS(eth->soc->caps, MTK_SOC_MT7628)) {
   mac = 0;
  } else {
   mac = (trxd.rxd4 >> RX_DMA_FPORT_SHIFT) &
    RX_DMA_FPORT_MASK;
   mac--;
  }

  if (unlikely(mac < 0 || mac >= MTK_MAC_COUNT ||
        !eth->netdev[mac]))
   goto release_desc;

  netdev = eth->netdev[mac];

  if (unlikely(test_bit(MTK_RESETTING, &eth->state)))
   goto release_desc;


  new_data = napi_alloc_frag(ring->frag_size);
  if (unlikely(!new_data)) {
   netdev->stats.rx_dropped++;
   goto release_desc;
  }
  dma_addr = dma_map_single(eth->dev,
       new_data + NET_SKB_PAD +
       eth->ip_align,
       ring->buf_size,
       DMA_FROM_DEVICE);
  if (unlikely(dma_mapping_error(eth->dev, dma_addr))) {
   skb_free_frag(new_data);
   netdev->stats.rx_dropped++;
   goto release_desc;
  }


  skb = build_skb(data, ring->frag_size);
  if (unlikely(!skb)) {
   skb_free_frag(new_data);
   netdev->stats.rx_dropped++;
   goto release_desc;
  }
  skb_reserve(skb, NET_SKB_PAD + NET_IP_ALIGN);

  dma_unmap_single(eth->dev, trxd.rxd1,
     ring->buf_size, DMA_FROM_DEVICE);
  pktlen = RX_DMA_GET_PLEN0(trxd.rxd2);
  skb->dev = netdev;
  skb_put(skb, pktlen);
  if (trxd.rxd4 & eth->rx_dma_l4_valid)
   skb->ip_summed = CHECKSUM_UNNECESSARY;
  else
   skb_checksum_none_assert(skb);
  skb->protocol = eth_type_trans(skb, netdev);

  if (netdev->features & NETIF_F_HW_VLAN_CTAG_RX &&
      RX_DMA_VID(trxd.rxd3))
   __vlan_hwaccel_put_tag(skb, htons(ETH_P_8021Q),
            RX_DMA_VID(trxd.rxd3));
  skb_record_rx_queue(skb, 0);
  napi_gro_receive(napi, skb);

  ring->data[idx] = new_data;
  rxd->rxd1 = (unsigned int)dma_addr;

release_desc:
  if (MTK_HAS_CAPS(eth->soc->caps, MTK_SOC_MT7628))
   rxd->rxd2 = RX_DMA_LSO;
  else
   rxd->rxd2 = RX_DMA_PLEN0(ring->buf_size);

  ring->calc_idx = idx;

  done++;
 }

rx_done:
 if (done) {



  wmb();
  mtk_update_rx_cpu_idx(eth);
 }

 return done;
}
