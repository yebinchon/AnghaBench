
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_enet_desc_ring {int rx_fifo_errors; int rx_frame_errors; int rx_length_errors; int rx_errors; int rx_crc_errors; } ;
typedef enum xgene_enet_err_code { ____Placeholder_xgene_enet_err_code } xgene_enet_err_code ;
void xgene_enet_parse_error(struct xgene_enet_desc_ring *ring,
       enum xgene_enet_err_code status)
{
 switch (status) {
 case 132:
  ring->rx_crc_errors++;
  break;
 case 134:
 case 133:
  ring->rx_errors++;
  break;
 case 128:
  ring->rx_frame_errors++;
  break;
 case 130:
  ring->rx_length_errors++;
  break;
 case 129:
  ring->rx_frame_errors++;
  break;
 case 131:
  ring->rx_fifo_errors++;
  break;
 default:
  break;
 }
}
