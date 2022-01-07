
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xgbe_ring_desc {int desc3; int desc2; void* desc1; void* desc0; } ;
struct TYPE_4__ {unsigned int packets; unsigned int bytes; } ;
struct xgbe_ring_data {int skb_dma_len; struct xgbe_ring_desc* rdesc; TYPE_1__ tx; int skb_dma; } ;
struct TYPE_6__ {scalar_t__ cur_mss; scalar_t__ cur_vlan_ctag; int xmit_more; } ;
struct xgbe_packet_data {unsigned int tx_packets; unsigned int tx_bytes; scalar_t__ mss; scalar_t__ vlan_ctag; int tcp_payload_len; int tcp_header_len; int length; int rdesc_count; int attributes; } ;
struct xgbe_ring {int cur; unsigned int coalesce_count; int rdesc_count; TYPE_3__ tx; struct xgbe_packet_data packet_data; } ;
struct TYPE_5__ {unsigned int tx_tso_packets; unsigned int tx_vxlan_packets; unsigned int* txq_packets; unsigned int* txq_bytes; } ;
struct xgbe_prv_data {unsigned int tx_frames; int netdev; TYPE_2__ ext_stats; } ;
struct xgbe_channel {size_t queue_index; int name; struct xgbe_ring* tx_ring; struct xgbe_prv_data* pdata; } ;


 int CIC ;
 int CPC ;
 int CSUM_ENABLE ;
 int CTXT ;
 int DBGPR (char*,...) ;
 int FD ;
 int FL ;
 int HL_B1L ;
 int IC ;
 int LD ;
 int MSS ;
 int OWN ;
 int PTP ;
 int TCMSSV ;
 int TCPHDRLEN ;
 int TCPPL ;
 int TSE ;
 int TSO_ENABLE ;
 int TTSE ;
 int TX_CONTEXT_DESC2 ;
 int TX_CONTEXT_DESC3 ;
 int TX_NORMAL_DESC2 ;
 int TX_NORMAL_DESC2_VLAN_INSERT ;
 int TX_NORMAL_DESC3 ;
 int TX_NORMAL_DESC3_VXLAN_PACKET ;
 int TX_PACKET_ATTRIBUTES ;
 int VLAN_CTAG ;
 int VLTV ;
 int VNP ;
 int VT ;
 int VTIR ;
 int VXLAN ;
 struct xgbe_ring_data* XGBE_GET_DESC_DATA (struct xgbe_ring*,int) ;
 int XGMAC_GET_BITS (int ,int ,int ) ;
 int XGMAC_SET_BITS_LE (int ,int ,int ,int) ;
 void* cpu_to_le32 (int ) ;
 int dma_wmb () ;
 int lower_32_bits (int ) ;
 int netdev_get_tx_queue (int ,size_t) ;
 int netdev_xmit_more () ;
 int netif_dbg (struct xgbe_prv_data*,int ,int ,char*,scalar_t__) ;
 scalar_t__ netif_msg_tx_queued (struct xgbe_prv_data*) ;
 scalar_t__ netif_xmit_stopped (int ) ;
 int smp_wmb () ;
 int tx_queued ;
 int upper_32_bits (int ) ;
 int xgbe_dump_tx_desc (struct xgbe_prv_data*,struct xgbe_ring*,int,int,int) ;
 int xgbe_tx_start_xmit (struct xgbe_channel*,struct xgbe_ring*) ;

__attribute__((used)) static void xgbe_dev_xmit(struct xgbe_channel *channel)
{
 struct xgbe_prv_data *pdata = channel->pdata;
 struct xgbe_ring *ring = channel->tx_ring;
 struct xgbe_ring_data *rdata;
 struct xgbe_ring_desc *rdesc;
 struct xgbe_packet_data *packet = &ring->packet_data;
 unsigned int tx_packets, tx_bytes;
 unsigned int csum, tso, vlan, vxlan;
 unsigned int tso_context, vlan_context;
 unsigned int tx_set_ic;
 int start_index = ring->cur;
 int cur_index = ring->cur;
 int i;

 DBGPR("-->xgbe_dev_xmit\n");

 tx_packets = packet->tx_packets;
 tx_bytes = packet->tx_bytes;

 csum = XGMAC_GET_BITS(packet->attributes, TX_PACKET_ATTRIBUTES,
         CSUM_ENABLE);
 tso = XGMAC_GET_BITS(packet->attributes, TX_PACKET_ATTRIBUTES,
        TSO_ENABLE);
 vlan = XGMAC_GET_BITS(packet->attributes, TX_PACKET_ATTRIBUTES,
         VLAN_CTAG);
 vxlan = XGMAC_GET_BITS(packet->attributes, TX_PACKET_ATTRIBUTES,
          VXLAN);

 if (tso && (packet->mss != ring->tx.cur_mss))
  tso_context = 1;
 else
  tso_context = 0;

 if (vlan && (packet->vlan_ctag != ring->tx.cur_vlan_ctag))
  vlan_context = 1;
 else
  vlan_context = 0;
 ring->coalesce_count += tx_packets;
 if (!pdata->tx_frames)
  tx_set_ic = 0;
 else if (tx_packets > pdata->tx_frames)
  tx_set_ic = 1;
 else if ((ring->coalesce_count % pdata->tx_frames) < tx_packets)
  tx_set_ic = 1;
 else
  tx_set_ic = 0;

 rdata = XGBE_GET_DESC_DATA(ring, cur_index);
 rdesc = rdata->rdesc;


 if (tso_context || vlan_context) {
  if (tso_context) {
   netif_dbg(pdata, tx_queued, pdata->netdev,
      "TSO context descriptor, mss=%u\n",
      packet->mss);


   XGMAC_SET_BITS_LE(rdesc->desc2, TX_CONTEXT_DESC2,
       MSS, packet->mss);


   XGMAC_SET_BITS_LE(rdesc->desc3, TX_CONTEXT_DESC3,
       CTXT, 1);


   XGMAC_SET_BITS_LE(rdesc->desc3, TX_CONTEXT_DESC3,
       TCMSSV, 1);

   ring->tx.cur_mss = packet->mss;
  }

  if (vlan_context) {
   netif_dbg(pdata, tx_queued, pdata->netdev,
      "VLAN context descriptor, ctag=%u\n",
      packet->vlan_ctag);


   XGMAC_SET_BITS_LE(rdesc->desc3, TX_CONTEXT_DESC3,
       CTXT, 1);


   XGMAC_SET_BITS_LE(rdesc->desc3, TX_CONTEXT_DESC3,
       VT, packet->vlan_ctag);


   XGMAC_SET_BITS_LE(rdesc->desc3, TX_CONTEXT_DESC3,
       VLTV, 1);

   ring->tx.cur_vlan_ctag = packet->vlan_ctag;
  }

  cur_index++;
  rdata = XGBE_GET_DESC_DATA(ring, cur_index);
  rdesc = rdata->rdesc;
 }


 rdesc->desc0 = cpu_to_le32(lower_32_bits(rdata->skb_dma));
 rdesc->desc1 = cpu_to_le32(upper_32_bits(rdata->skb_dma));


 XGMAC_SET_BITS_LE(rdesc->desc2, TX_NORMAL_DESC2, HL_B1L,
     rdata->skb_dma_len);


 if (vlan)
  XGMAC_SET_BITS_LE(rdesc->desc2, TX_NORMAL_DESC2, VTIR,
      TX_NORMAL_DESC2_VLAN_INSERT);


 if (XGMAC_GET_BITS(packet->attributes, TX_PACKET_ATTRIBUTES, PTP))
  XGMAC_SET_BITS_LE(rdesc->desc2, TX_NORMAL_DESC2, TTSE, 1);


 XGMAC_SET_BITS_LE(rdesc->desc3, TX_NORMAL_DESC3, FD, 1);


 XGMAC_SET_BITS_LE(rdesc->desc3, TX_NORMAL_DESC3, CTXT, 0);


 if (cur_index != start_index)
  XGMAC_SET_BITS_LE(rdesc->desc3, TX_NORMAL_DESC3, OWN, 1);

 if (tso) {

  XGMAC_SET_BITS_LE(rdesc->desc3, TX_NORMAL_DESC3, TSE, 1);
  XGMAC_SET_BITS_LE(rdesc->desc3, TX_NORMAL_DESC3, TCPPL,
      packet->tcp_payload_len);
  XGMAC_SET_BITS_LE(rdesc->desc3, TX_NORMAL_DESC3, TCPHDRLEN,
      packet->tcp_header_len / 4);

  pdata->ext_stats.tx_tso_packets += tx_packets;
 } else {

  XGMAC_SET_BITS_LE(rdesc->desc3, TX_NORMAL_DESC3, CPC, 0);


  if (csum)
   XGMAC_SET_BITS_LE(rdesc->desc3, TX_NORMAL_DESC3,
       CIC, 0x3);


  XGMAC_SET_BITS_LE(rdesc->desc3, TX_NORMAL_DESC3, FL,
      packet->length);
 }

 if (vxlan) {
  XGMAC_SET_BITS_LE(rdesc->desc3, TX_NORMAL_DESC3, VNP,
      TX_NORMAL_DESC3_VXLAN_PACKET);

  pdata->ext_stats.tx_vxlan_packets += packet->tx_packets;
 }

 for (i = cur_index - start_index + 1; i < packet->rdesc_count; i++) {
  cur_index++;
  rdata = XGBE_GET_DESC_DATA(ring, cur_index);
  rdesc = rdata->rdesc;


  rdesc->desc0 = cpu_to_le32(lower_32_bits(rdata->skb_dma));
  rdesc->desc1 = cpu_to_le32(upper_32_bits(rdata->skb_dma));


  XGMAC_SET_BITS_LE(rdesc->desc2, TX_NORMAL_DESC2, HL_B1L,
      rdata->skb_dma_len);


  XGMAC_SET_BITS_LE(rdesc->desc3, TX_NORMAL_DESC3, OWN, 1);


  XGMAC_SET_BITS_LE(rdesc->desc3, TX_NORMAL_DESC3, CTXT, 0);


  if (csum)
   XGMAC_SET_BITS_LE(rdesc->desc3, TX_NORMAL_DESC3,
       CIC, 0x3);
 }


 XGMAC_SET_BITS_LE(rdesc->desc3, TX_NORMAL_DESC3, LD, 1);


 if (tx_set_ic)
  XGMAC_SET_BITS_LE(rdesc->desc2, TX_NORMAL_DESC2, IC, 1);


 rdata->tx.packets = tx_packets;
 rdata->tx.bytes = tx_bytes;

 pdata->ext_stats.txq_packets[channel->queue_index] += tx_packets;
 pdata->ext_stats.txq_bytes[channel->queue_index] += tx_bytes;





 dma_wmb();


 rdata = XGBE_GET_DESC_DATA(ring, start_index);
 rdesc = rdata->rdesc;
 XGMAC_SET_BITS_LE(rdesc->desc3, TX_NORMAL_DESC3, OWN, 1);

 if (netif_msg_tx_queued(pdata))
  xgbe_dump_tx_desc(pdata, ring, start_index,
      packet->rdesc_count, 1);


 smp_wmb();

 ring->cur = cur_index + 1;
 if (!netdev_xmit_more() ||
     netif_xmit_stopped(netdev_get_tx_queue(pdata->netdev,
         channel->queue_index)))
  xgbe_tx_start_xmit(channel, ring);
 else
  ring->tx.xmit_more = 1;

 DBGPR("  %s: descriptors %u to %u written\n",
       channel->name, start_index & (ring->rdesc_count - 1),
       (ring->cur - 1) & (ring->rdesc_count - 1));

 DBGPR("<--xgbe_dev_xmit\n");
}
