
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xgbe_ring_desc {int desc0; int desc3; int desc2; int desc1; } ;
struct TYPE_4__ {int hdr_len; int len; } ;
struct xgbe_ring_data {TYPE_2__ rx; struct xgbe_ring_desc* rdesc; } ;
struct xgbe_packet_data {int vlan_ctag; int errors; int attributes; int rss_hash_type; int rss_hash; } ;
struct xgbe_ring {int cur; int rdesc_count; struct xgbe_packet_data packet_data; } ;
struct TYPE_3__ {int* rxq_bytes; int * rxq_packets; int rx_vxlan_csum_errors; int rx_csum_errors; int rx_vxlan_packets; int rx_split_header_packets; } ;
struct xgbe_prv_data {TYPE_1__ ext_stats; struct net_device* netdev; } ;
struct xgbe_channel {size_t queue_index; int name; struct xgbe_ring* rx_ring; struct xgbe_prv_data* pdata; } ;
struct net_device {int features; } ;


 int CDA ;
 int CONTEXT ;
 int CONTEXT_NEXT ;
 int CSUM_DONE ;
 int CTXT ;
 int DBGPR (char*,int,...) ;
 int ES ;
 int ETLT ;
 int FD ;
 int FIRST ;
 int FRAME ;
 int HL ;
 int L34T ;
 int LAST ;
 int LD ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NETIF_F_RXCSUM ;
 int OVT ;
 int OWN ;
 int PKT_HASH_TYPE_L3 ;
 int PKT_HASH_TYPE_L4 ;
 int PL ;
 int RSS_HASH ;
 int RSV ;






 int RX_NORMAL_DESC0 ;
 int RX_NORMAL_DESC2 ;
 int RX_NORMAL_DESC3 ;
 int RX_PACKET_ATTRIBUTES ;
 int RX_PACKET_ERRORS ;
 int TNP ;
 int TNPCSUM_DONE ;
 int VLAN_CTAG ;
 struct xgbe_ring_data* XGBE_GET_DESC_DATA (struct xgbe_ring*,int) ;
 unsigned int XGMAC_GET_BITS (int ,int ,int ) ;
 int XGMAC_GET_BITS_LE (int ,int ,int ) ;
 int XGMAC_SET_BITS (int ,int ,int ,int) ;
 int dma_rmb () ;
 int le32_to_cpu (int ) ;
 int netif_dbg (struct xgbe_prv_data*,int ,struct net_device*,char*,int,...) ;
 scalar_t__ netif_msg_rx_status (struct xgbe_prv_data*) ;
 int rx_status ;
 int xgbe_dump_rx_desc (struct xgbe_prv_data*,struct xgbe_ring*,int) ;
 int xgbe_get_rx_tstamp (struct xgbe_packet_data*,struct xgbe_ring_desc*) ;

__attribute__((used)) static int xgbe_dev_read(struct xgbe_channel *channel)
{
 struct xgbe_prv_data *pdata = channel->pdata;
 struct xgbe_ring *ring = channel->rx_ring;
 struct xgbe_ring_data *rdata;
 struct xgbe_ring_desc *rdesc;
 struct xgbe_packet_data *packet = &ring->packet_data;
 struct net_device *netdev = pdata->netdev;
 unsigned int err, etlt, l34t;

 DBGPR("-->xgbe_dev_read: cur = %d\n", ring->cur);

 rdata = XGBE_GET_DESC_DATA(ring, ring->cur);
 rdesc = rdata->rdesc;


 if (XGMAC_GET_BITS_LE(rdesc->desc3, RX_NORMAL_DESC3, OWN))
  return 1;


 dma_rmb();

 if (netif_msg_rx_status(pdata))
  xgbe_dump_rx_desc(pdata, ring, ring->cur);

 if (XGMAC_GET_BITS_LE(rdesc->desc3, RX_NORMAL_DESC3, CTXT)) {

  xgbe_get_rx_tstamp(packet, rdesc);

  XGMAC_SET_BITS(packet->attributes, RX_PACKET_ATTRIBUTES,
          CONTEXT, 1);
  XGMAC_SET_BITS(packet->attributes, RX_PACKET_ATTRIBUTES,
          CONTEXT_NEXT, 0);
  return 0;
 }


 XGMAC_SET_BITS(packet->attributes, RX_PACKET_ATTRIBUTES, CONTEXT, 0);


 if (XGMAC_GET_BITS_LE(rdesc->desc3, RX_NORMAL_DESC3, CDA))
  XGMAC_SET_BITS(packet->attributes, RX_PACKET_ATTRIBUTES,
          CONTEXT_NEXT, 1);


 if (XGMAC_GET_BITS_LE(rdesc->desc3, RX_NORMAL_DESC3, FD)) {
  XGMAC_SET_BITS(packet->attributes, RX_PACKET_ATTRIBUTES,
          FIRST, 1);
  rdata->rx.hdr_len = XGMAC_GET_BITS_LE(rdesc->desc2,
            RX_NORMAL_DESC2, HL);
  if (rdata->rx.hdr_len)
   pdata->ext_stats.rx_split_header_packets++;
 } else {
  XGMAC_SET_BITS(packet->attributes, RX_PACKET_ATTRIBUTES,
          FIRST, 0);
 }


 if (XGMAC_GET_BITS_LE(rdesc->desc3, RX_NORMAL_DESC3, RSV)) {
  XGMAC_SET_BITS(packet->attributes, RX_PACKET_ATTRIBUTES,
          RSS_HASH, 1);

  packet->rss_hash = le32_to_cpu(rdesc->desc1);

  l34t = XGMAC_GET_BITS_LE(rdesc->desc3, RX_NORMAL_DESC3, L34T);
  switch (l34t) {
  case 133:
  case 132:
  case 130:
  case 129:
   packet->rss_hash_type = PKT_HASH_TYPE_L4;
   break;
  default:
   packet->rss_hash_type = PKT_HASH_TYPE_L3;
  }
 }


 if (!XGMAC_GET_BITS_LE(rdesc->desc3, RX_NORMAL_DESC3, LD))
  return 0;


 XGMAC_SET_BITS(packet->attributes, RX_PACKET_ATTRIBUTES,
         LAST, 1);


 rdata->rx.len = XGMAC_GET_BITS_LE(rdesc->desc3, RX_NORMAL_DESC3, PL);


 if (netdev->features & NETIF_F_RXCSUM) {
  XGMAC_SET_BITS(packet->attributes, RX_PACKET_ATTRIBUTES,
          CSUM_DONE, 1);
  XGMAC_SET_BITS(packet->attributes, RX_PACKET_ATTRIBUTES,
          TNPCSUM_DONE, 1);
 }


 if (XGMAC_GET_BITS_LE(rdesc->desc2, RX_NORMAL_DESC2, TNP)) {
  XGMAC_SET_BITS(packet->attributes, RX_PACKET_ATTRIBUTES,
          TNP, 1);
  pdata->ext_stats.rx_vxlan_packets++;

  l34t = XGMAC_GET_BITS_LE(rdesc->desc3, RX_NORMAL_DESC3, L34T);
  switch (l34t) {
  case 131:
  case 128:
   XGMAC_SET_BITS(packet->attributes, RX_PACKET_ATTRIBUTES,
           TNPCSUM_DONE, 0);
   break;
  }
 }


 err = XGMAC_GET_BITS_LE(rdesc->desc3, RX_NORMAL_DESC3, ES);
 etlt = XGMAC_GET_BITS_LE(rdesc->desc3, RX_NORMAL_DESC3, ETLT);
 netif_dbg(pdata, rx_status, netdev, "err=%u, etlt=%#x\n", err, etlt);

 if (!err || !etlt) {

  if ((etlt == 0x09) &&
      (netdev->features & NETIF_F_HW_VLAN_CTAG_RX)) {
   XGMAC_SET_BITS(packet->attributes, RX_PACKET_ATTRIBUTES,
           VLAN_CTAG, 1);
   packet->vlan_ctag = XGMAC_GET_BITS_LE(rdesc->desc0,
             RX_NORMAL_DESC0,
             OVT);
   netif_dbg(pdata, rx_status, netdev, "vlan-ctag=%#06x\n",
      packet->vlan_ctag);
  }
 } else {
  unsigned int tnp = XGMAC_GET_BITS(packet->attributes,
        RX_PACKET_ATTRIBUTES, TNP);

  if ((etlt == 0x05) || (etlt == 0x06)) {
   XGMAC_SET_BITS(packet->attributes, RX_PACKET_ATTRIBUTES,
           CSUM_DONE, 0);
   XGMAC_SET_BITS(packet->attributes, RX_PACKET_ATTRIBUTES,
           TNPCSUM_DONE, 0);
   pdata->ext_stats.rx_csum_errors++;
  } else if (tnp && ((etlt == 0x09) || (etlt == 0x0a))) {
   XGMAC_SET_BITS(packet->attributes, RX_PACKET_ATTRIBUTES,
           CSUM_DONE, 0);
   XGMAC_SET_BITS(packet->attributes, RX_PACKET_ATTRIBUTES,
           TNPCSUM_DONE, 0);
   pdata->ext_stats.rx_vxlan_csum_errors++;
  } else {
   XGMAC_SET_BITS(packet->errors, RX_PACKET_ERRORS,
           FRAME, 1);
  }
 }

 pdata->ext_stats.rxq_packets[channel->queue_index]++;
 pdata->ext_stats.rxq_bytes[channel->queue_index] += rdata->rx.len;

 DBGPR("<--xgbe_dev_read: %s - descriptor=%u (cur=%d)\n", channel->name,
       ring->cur & (ring->rdesc_count - 1), ring->cur);

 return 0;
}
