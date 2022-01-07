
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct xgbe_ring_desc {int desc0; int desc1; int desc3; } ;
struct xgbe_packet_data {int rx_tstamp; int attributes; } ;


 int RX_CONTEXT_DESC3 ;
 int RX_PACKET_ATTRIBUTES ;
 int RX_TSTAMP ;
 int TSA ;
 int TSD ;
 scalar_t__ XGMAC_GET_BITS_LE (int ,int ,int ) ;
 int XGMAC_SET_BITS (int ,int ,int ,int) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static void xgbe_get_rx_tstamp(struct xgbe_packet_data *packet,
          struct xgbe_ring_desc *rdesc)
{
 u64 nsec;

 if (XGMAC_GET_BITS_LE(rdesc->desc3, RX_CONTEXT_DESC3, TSA) &&
     !XGMAC_GET_BITS_LE(rdesc->desc3, RX_CONTEXT_DESC3, TSD)) {
  nsec = le32_to_cpu(rdesc->desc1);
  nsec <<= 32;
  nsec |= le32_to_cpu(rdesc->desc0);
  if (nsec != 0xffffffffffffffffULL) {
   packet->rx_tstamp = nsec;
   XGMAC_SET_BITS(packet->attributes, RX_PACKET_ATTRIBUTES,
           RX_TSTAMP, 1);
  }
 }
}
