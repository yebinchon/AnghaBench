
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fmtx_data {int preemph; } ;
struct fmdev {scalar_t__ curr_fmmode; struct fmtx_data tx_data; } ;
typedef int payload ;


 int EPERM ;
 scalar_t__ FM_MODE_TX ;
 int FM_TX_PREEMPH_50US ;
 int FM_TX_PREEMPH_75US ;
 int FM_TX_PREEMPH_OFF ;
 int PREMPH_SET ;
 int REG_WR ;



 int fmc_send_cmd (struct fmdev*,int ,int ,int *,int,int *,int *) ;

int fm_tx_set_preemph_filter(struct fmdev *fmdev, u32 preemphasis)
{
 struct fmtx_data *tx = &fmdev->tx_data;
 u16 payload;
 int ret;

 if (fmdev->curr_fmmode != FM_MODE_TX)
  return -EPERM;

 switch (preemphasis) {
 case 128:
  payload = FM_TX_PREEMPH_OFF;
  break;
 case 130:
  payload = FM_TX_PREEMPH_50US;
  break;
 case 129:
  payload = FM_TX_PREEMPH_75US;
  break;
 }

 ret = fmc_send_cmd(fmdev, PREMPH_SET, REG_WR, &payload,
   sizeof(payload), ((void*)0), ((void*)0));
 if (ret < 0)
  return ret;

 tx->preemph = payload;

 return ret;
}
