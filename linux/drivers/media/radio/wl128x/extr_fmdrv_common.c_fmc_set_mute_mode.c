
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fmdev {int curr_fmmode; } ;


 int EINVAL ;


 int fm_rx_set_mute_mode (struct fmdev*,int ) ;
 int fm_tx_set_mute_mode (struct fmdev*,int ) ;

int fmc_set_mute_mode(struct fmdev *fmdev, u8 mute_mode_toset)
{
 switch (fmdev->curr_fmmode) {
 case 129:
  return fm_rx_set_mute_mode(fmdev, mute_mode_toset);

 case 128:
  return fm_tx_set_mute_mode(fmdev, mute_mode_toset);

 default:
  return -EINVAL;
 }
}
