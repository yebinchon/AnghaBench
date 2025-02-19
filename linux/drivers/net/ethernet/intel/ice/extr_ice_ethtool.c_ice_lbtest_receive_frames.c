
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status_error0; } ;
union ice_32b_rx_flex_desc {TYPE_1__ wb; } ;
typedef int u8 ;
struct ice_rx_buf {int page; } ;
struct ice_ring {int count; struct ice_rx_buf* rx_buf; } ;


 union ice_32b_rx_flex_desc* ICE_RX_DESC (struct ice_ring*,int) ;
 int ICE_TX_DESC_CMD_EOP ;
 int ICE_TX_DESC_CMD_RS ;
 int cpu_to_le16 (int) ;
 scalar_t__ ice_lbtest_check_frame (int *) ;
 int * page_address (int ) ;

__attribute__((used)) static int ice_lbtest_receive_frames(struct ice_ring *rx_ring)
{
 struct ice_rx_buf *rx_buf;
 int valid_frames, i;
 u8 *received_buf;

 valid_frames = 0;

 for (i = 0; i < rx_ring->count; i++) {
  union ice_32b_rx_flex_desc *rx_desc;

  rx_desc = ICE_RX_DESC(rx_ring, i);

  if (!(rx_desc->wb.status_error0 &
      cpu_to_le16(ICE_TX_DESC_CMD_EOP | ICE_TX_DESC_CMD_RS)))
   continue;

  rx_buf = &rx_ring->rx_buf[i];
  received_buf = page_address(rx_buf->page);

  if (ice_lbtest_check_frame(received_buf))
   valid_frames++;
 }

 return valid_frames;
}
