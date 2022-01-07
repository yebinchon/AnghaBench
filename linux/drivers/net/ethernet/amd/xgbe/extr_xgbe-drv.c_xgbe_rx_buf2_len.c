
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int dma_len; } ;
struct TYPE_4__ {unsigned int len; TYPE_1__ buf; } ;
struct xgbe_ring_data {TYPE_2__ rx; } ;
struct xgbe_packet_data {int attributes; } ;


 int LAST ;
 int RX_PACKET_ATTRIBUTES ;
 int XGMAC_GET_BITS (int ,int ,int ) ;

__attribute__((used)) static unsigned int xgbe_rx_buf2_len(struct xgbe_ring_data *rdata,
         struct xgbe_packet_data *packet,
         unsigned int len)
{

 if (!XGMAC_GET_BITS(packet->attributes, RX_PACKET_ATTRIBUTES, LAST))
  return rdata->rx.buf.dma_len;




 return rdata->rx.len - len;
}
