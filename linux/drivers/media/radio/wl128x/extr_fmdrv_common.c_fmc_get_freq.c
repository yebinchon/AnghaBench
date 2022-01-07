
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ freq; } ;
struct fmdev {int curr_fmmode; TYPE_1__ rx; } ;


 int EINVAL ;
 int ENOMEM ;
 int EPERM ;


 scalar_t__ FM_UNDEFINED_FREQ ;
 int fmerr (char*) ;

int fmc_get_freq(struct fmdev *fmdev, u32 *cur_tuned_frq)
{
 if (fmdev->rx.freq == FM_UNDEFINED_FREQ) {
  fmerr("RX frequency is not set\n");
  return -EPERM;
 }
 if (cur_tuned_frq == ((void*)0)) {
  fmerr("Invalid memory\n");
  return -ENOMEM;
 }

 switch (fmdev->curr_fmmode) {
 case 129:
  *cur_tuned_frq = fmdev->rx.freq;
  return 0;

 case 128:
  *cur_tuned_frq = 0;
  return 0;

 default:
  return -EINVAL;
 }

}
