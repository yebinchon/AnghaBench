
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fmdev {int curr_fmmode; } ;


 int EINVAL ;


 int fm_rx_set_freq (struct fmdev*,int ) ;
 int fm_tx_set_freq (struct fmdev*,int ) ;

int fmc_set_freq(struct fmdev *fmdev, u32 freq_to_set)
{
 switch (fmdev->curr_fmmode) {
 case 129:
  return fm_rx_set_freq(fmdev, freq_to_set);

 case 128:
  return fm_tx_set_freq(fmdev, freq_to_set);

 default:
  return -EINVAL;
 }
}
