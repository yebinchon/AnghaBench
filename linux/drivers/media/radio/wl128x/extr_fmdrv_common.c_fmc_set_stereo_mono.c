
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct fmdev {int curr_fmmode; } ;


 int EINVAL ;


 int fm_rx_set_stereo_mono (struct fmdev*,int ) ;
 int fm_tx_set_stereo_mono (struct fmdev*,int ) ;

int fmc_set_stereo_mono(struct fmdev *fmdev, u16 mode)
{
 switch (fmdev->curr_fmmode) {
 case 129:
  return fm_rx_set_stereo_mono(fmdev, mode);

 case 128:
  return fm_tx_set_stereo_mono(fmdev, mode);

 default:
  return -EINVAL;
 }
}
