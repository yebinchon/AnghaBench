
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {int rx_length_errors; int rx_errors; int rx_frame_errors; int rx_crc_errors; } ;
struct fza_private {TYPE_2__ stats; TYPE_1__* regs; } ;
struct TYPE_3__ {int control_a; } ;


 int const FDDI_FC_K_CLASS_ASYNC ;
 int const FDDI_FC_K_CLASS_MASK ;


 int const FDDI_FC_K_FORMAT_MASK ;
 int FZA_CONTROL_A_HALT ;
 int const FZA_RING_PBC_MASK ;
 int const FZA_RING_RX_BAD ;
 int const FZA_RING_RX_CRC ;
 int const FZA_RING_RX_DA_CAM ;
 int const FZA_RING_RX_DA_MASK ;
 int const FZA_RING_RX_FSB_ERR ;
 int const FZA_RING_RX_FSC_MASK ;



 int const FZA_RING_RX_RRR_MASK ;


 int const FZA_RING_RX_SA_ALIAS ;
 int const FZA_RING_RX_SA_CAM ;
 int const FZA_RING_RX_SA_MASK ;
 int readw_o (int *) ;
 scalar_t__ unlikely (int) ;
 int writew_o (int ,int *) ;

__attribute__((used)) static inline int fza_rx_err(struct fza_private *fp,
        const u32 rmc, const u8 fc)
{
 int len, min_len, max_len;

 len = rmc & FZA_RING_PBC_MASK;

 if (unlikely((rmc & FZA_RING_RX_BAD) != 0)) {
  fp->stats.rx_errors++;


  if ((rmc & (FZA_RING_RX_CRC | FZA_RING_RX_RRR_MASK |
       FZA_RING_RX_DA_MASK | FZA_RING_RX_SA_MASK)) ==
       (FZA_RING_RX_CRC | 131 |
        FZA_RING_RX_DA_CAM | FZA_RING_RX_SA_ALIAS)) {
   if (len >= 8190)
    fp->stats.rx_length_errors++;
   return 1;
  }
  if ((rmc & (FZA_RING_RX_CRC | FZA_RING_RX_RRR_MASK |
       FZA_RING_RX_DA_MASK | FZA_RING_RX_SA_MASK)) ==
       (FZA_RING_RX_CRC | 131 |
        FZA_RING_RX_DA_CAM | FZA_RING_RX_SA_CAM)) {

   writew_o(FZA_CONTROL_A_HALT, &fp->regs->control_a);
   readw_o(&fp->regs->control_a);
   return 1;
  }


  switch (rmc & FZA_RING_RX_RRR_MASK) {
  case 129:
   if ((rmc & FZA_RING_RX_CRC) != 0)
    fp->stats.rx_crc_errors++;
   else if ((rmc & FZA_RING_RX_FSC_MASK) == 0 ||
     (rmc & FZA_RING_RX_FSB_ERR) != 0)
    fp->stats.rx_frame_errors++;
   return 1;
  case 128:
  case 131:
  case 132:

   writew_o(FZA_CONTROL_A_HALT, &fp->regs->control_a);
   readw_o(&fp->regs->control_a);
   return 1;
  case 130:
   fp->stats.rx_frame_errors++;
   return 1;
  default:
   return 1;
  }
 }


 switch (fc & FDDI_FC_K_FORMAT_MASK) {
 case 133:
  if ((fc & FDDI_FC_K_CLASS_MASK) == FDDI_FC_K_CLASS_ASYNC)
   min_len = 37;
  else
   min_len = 17;
  break;
 case 134:
  min_len = 20;
  break;
 default:
  min_len = 17;
  break;
 }
 max_len = 4495;
 if (len < min_len || len > max_len) {
  fp->stats.rx_errors++;
  fp->stats.rx_length_errors++;
  return 1;
 }

 return 0;
}
