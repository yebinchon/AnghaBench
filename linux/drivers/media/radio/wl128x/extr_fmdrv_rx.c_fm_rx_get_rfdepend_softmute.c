
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int rf_depend_mute; } ;
struct fmdev {scalar_t__ curr_fmmode; TYPE_1__ rx; } ;


 int ENOMEM ;
 int EPERM ;
 scalar_t__ FM_MODE_RX ;
 int fmerr (char*) ;

int fm_rx_get_rfdepend_softmute(struct fmdev *fmdev, u8 *curr_mute_mode)
{
 if (fmdev->curr_fmmode != FM_MODE_RX)
  return -EPERM;

 if (curr_mute_mode == ((void*)0)) {
  fmerr("Invalid memory\n");
  return -ENOMEM;
 }

 *curr_mute_mode = fmdev->rx.rf_depend_mute;

 return 0;
}
