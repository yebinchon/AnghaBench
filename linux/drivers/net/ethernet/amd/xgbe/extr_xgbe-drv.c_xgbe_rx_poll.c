
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_6__ {unsigned int error; unsigned int len; struct sk_buff* skb; } ;
struct TYPE_7__ {int * pages; int pages_offset; } ;
struct TYPE_8__ {TYPE_2__ pa; int dma_len; int dma_off; int dma_base; } ;
struct TYPE_9__ {TYPE_3__ buf; } ;
struct xgbe_ring_data {int state_saved; TYPE_1__ state; TYPE_4__ rx; } ;
struct xgbe_packet_data {int rss_hash_type; int rss_hash; int attributes; int rx_tstamp; int vlan_ctag; scalar_t__ errors; } ;
struct xgbe_ring {int cur; struct xgbe_packet_data packet_data; } ;
struct napi_struct {int dummy; } ;
struct xgbe_hw_if {scalar_t__ (* dev_read ) (struct xgbe_channel*) ;} ;
struct xgbe_prv_data {int tstamp_tc; int dev; struct napi_struct napi; scalar_t__ per_channel_irq; struct net_device* netdev; struct xgbe_hw_if hw_if; } ;
struct xgbe_channel {int queue_index; struct napi_struct napi; struct xgbe_ring* rx_ring; struct xgbe_prv_data* pdata; } ;
struct skb_shared_hwtstamps {int hwtstamp; } ;
struct sk_buff {scalar_t__ protocol; unsigned int len; int encapsulation; int csum_level; struct net_device* dev; int ip_summed; } ;
struct net_device {unsigned int mtu; int features; } ;
struct TYPE_10__ {int nr_frags; } ;


 int CHECKSUM_UNNECESSARY ;
 int CONTEXT ;
 int CONTEXT_NEXT ;
 int CSUM_DONE ;
 int DBGPR (char*,int) ;
 int DMA_FROM_DEVICE ;
 unsigned int ETH_HLEN ;
 int ETH_P_8021Q ;
 int LAST ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int RSS_HASH ;
 int RX_PACKET_ATTRIBUTES ;
 int RX_TSTAMP ;
 int TNP ;
 int TNPCSUM_DONE ;
 int VLAN_CTAG ;
 scalar_t__ VLAN_HLEN ;
 struct xgbe_ring_data* XGBE_GET_DESC_DATA (struct xgbe_ring*,int) ;
 int XGBE_RX_DESC_CNT ;
 int XGMAC_GET_BITS (int ,int ,int ) ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,scalar_t__,int ) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int dma_sync_single_range_for_cpu (int ,int ,int ,int ,int ) ;
 scalar_t__ eth_type_trans (struct sk_buff*,struct net_device*) ;
 scalar_t__ htons (int ) ;
 int memset (struct xgbe_packet_data*,int ,int) ;
 int napi_gro_receive (struct napi_struct*,struct sk_buff*) ;
 int netif_err (struct xgbe_prv_data*,int ,struct net_device*,char*) ;
 scalar_t__ netif_msg_pktdata (struct xgbe_prv_data*) ;
 int ns_to_ktime (int ) ;
 int rx_err ;
 int skb_add_rx_frag (struct sk_buff*,int ,int *,int ,unsigned int,int ) ;
 int skb_checksum_none_assert (struct sk_buff*) ;
 struct skb_shared_hwtstamps* skb_hwtstamps (struct sk_buff*) ;
 int skb_record_rx_queue (struct sk_buff*,int ) ;
 int skb_set_hash (struct sk_buff*,int ,int ) ;
 TYPE_5__* skb_shinfo (struct sk_buff*) ;
 scalar_t__ stub1 (struct xgbe_channel*) ;
 int timecounter_cyc2time (int *,int ) ;
 struct sk_buff* xgbe_create_skb (struct xgbe_prv_data*,struct napi_struct*,struct xgbe_ring_data*,unsigned int) ;
 int xgbe_print_pkt (struct net_device*,struct sk_buff*,int) ;
 unsigned int xgbe_rx_buf1_len (struct xgbe_ring_data*,struct xgbe_packet_data*) ;
 unsigned int xgbe_rx_buf2_len (struct xgbe_ring_data*,struct xgbe_packet_data*,unsigned int) ;
 int xgbe_rx_dirty_desc (struct xgbe_ring*) ;
 int xgbe_rx_refresh (struct xgbe_channel*) ;

__attribute__((used)) static int xgbe_rx_poll(struct xgbe_channel *channel, int budget)
{
 struct xgbe_prv_data *pdata = channel->pdata;
 struct xgbe_hw_if *hw_if = &pdata->hw_if;
 struct xgbe_ring *ring = channel->rx_ring;
 struct xgbe_ring_data *rdata;
 struct xgbe_packet_data *packet;
 struct net_device *netdev = pdata->netdev;
 struct napi_struct *napi;
 struct sk_buff *skb;
 struct skb_shared_hwtstamps *hwtstamps;
 unsigned int last, error, context_next, context;
 unsigned int len, buf1_len, buf2_len, max_len;
 unsigned int received = 0;
 int packet_count = 0;

 DBGPR("-->xgbe_rx_poll: budget=%d\n", budget);


 if (!ring)
  return 0;

 last = 0;
 context_next = 0;

 napi = (pdata->per_channel_irq) ? &channel->napi : &pdata->napi;

 rdata = XGBE_GET_DESC_DATA(ring, ring->cur);
 packet = &ring->packet_data;
 while (packet_count < budget) {
  DBGPR("  cur = %d\n", ring->cur);


  if (!received && rdata->state_saved) {
   skb = rdata->state.skb;
   error = rdata->state.error;
   len = rdata->state.len;
  } else {
   memset(packet, 0, sizeof(*packet));
   skb = ((void*)0);
   error = 0;
   len = 0;
  }

read_again:
  rdata = XGBE_GET_DESC_DATA(ring, ring->cur);

  if (xgbe_rx_dirty_desc(ring) > (XGBE_RX_DESC_CNT >> 3))
   xgbe_rx_refresh(channel);

  if (hw_if->dev_read(channel))
   break;

  received++;
  ring->cur++;

  last = XGMAC_GET_BITS(packet->attributes, RX_PACKET_ATTRIBUTES,
          LAST);
  context_next = XGMAC_GET_BITS(packet->attributes,
           RX_PACKET_ATTRIBUTES,
           CONTEXT_NEXT);
  context = XGMAC_GET_BITS(packet->attributes,
      RX_PACKET_ATTRIBUTES,
      CONTEXT);


  if ((!last || context_next) && error)
   goto read_again;

  if (error || packet->errors) {
   if (packet->errors)
    netif_err(pdata, rx_err, netdev,
       "error in received packet\n");
   dev_kfree_skb(skb);
   goto next_packet;
  }

  if (!context) {

   buf1_len = xgbe_rx_buf1_len(rdata, packet);
   len += buf1_len;
   buf2_len = xgbe_rx_buf2_len(rdata, packet, len);
   len += buf2_len;

   if (!skb) {
    skb = xgbe_create_skb(pdata, napi, rdata,
            buf1_len);
    if (!skb) {
     error = 1;
     goto skip_data;
    }
   }

   if (buf2_len) {
    dma_sync_single_range_for_cpu(pdata->dev,
       rdata->rx.buf.dma_base,
       rdata->rx.buf.dma_off,
       rdata->rx.buf.dma_len,
       DMA_FROM_DEVICE);

    skb_add_rx_frag(skb, skb_shinfo(skb)->nr_frags,
      rdata->rx.buf.pa.pages,
      rdata->rx.buf.pa.pages_offset,
      buf2_len,
      rdata->rx.buf.dma_len);
    rdata->rx.buf.pa.pages = ((void*)0);
   }
  }

skip_data:
  if (!last || context_next)
   goto read_again;

  if (!skb)
   goto next_packet;


  max_len = netdev->mtu + ETH_HLEN;
  if (!(netdev->features & NETIF_F_HW_VLAN_CTAG_RX) &&
      (skb->protocol == htons(ETH_P_8021Q)))
   max_len += VLAN_HLEN;

  if (skb->len > max_len) {
   netif_err(pdata, rx_err, netdev,
      "packet length exceeds configured MTU\n");
   dev_kfree_skb(skb);
   goto next_packet;
  }

  if (netif_msg_pktdata(pdata))
   xgbe_print_pkt(netdev, skb, 0);

  skb_checksum_none_assert(skb);
  if (XGMAC_GET_BITS(packet->attributes,
       RX_PACKET_ATTRIBUTES, CSUM_DONE))
   skb->ip_summed = CHECKSUM_UNNECESSARY;

  if (XGMAC_GET_BITS(packet->attributes,
       RX_PACKET_ATTRIBUTES, TNP)) {
   skb->encapsulation = 1;

   if (XGMAC_GET_BITS(packet->attributes,
        RX_PACKET_ATTRIBUTES, TNPCSUM_DONE))
    skb->csum_level = 1;
  }

  if (XGMAC_GET_BITS(packet->attributes,
       RX_PACKET_ATTRIBUTES, VLAN_CTAG))
   __vlan_hwaccel_put_tag(skb, htons(ETH_P_8021Q),
            packet->vlan_ctag);

  if (XGMAC_GET_BITS(packet->attributes,
       RX_PACKET_ATTRIBUTES, RX_TSTAMP)) {
   u64 nsec;

   nsec = timecounter_cyc2time(&pdata->tstamp_tc,
          packet->rx_tstamp);
   hwtstamps = skb_hwtstamps(skb);
   hwtstamps->hwtstamp = ns_to_ktime(nsec);
  }

  if (XGMAC_GET_BITS(packet->attributes,
       RX_PACKET_ATTRIBUTES, RSS_HASH))
   skb_set_hash(skb, packet->rss_hash,
         packet->rss_hash_type);

  skb->dev = netdev;
  skb->protocol = eth_type_trans(skb, netdev);
  skb_record_rx_queue(skb, channel->queue_index);

  napi_gro_receive(napi, skb);

next_packet:
  packet_count++;
 }


 if (received && (!last || context_next)) {
  rdata = XGBE_GET_DESC_DATA(ring, ring->cur);
  rdata->state_saved = 1;
  rdata->state.skb = skb;
  rdata->state.len = len;
  rdata->state.error = error;
 }

 DBGPR("<--xgbe_rx_poll: packet_count = %d\n", packet_count);

 return packet_count;
}
