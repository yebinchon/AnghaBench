
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int volume; } ;
struct fmdev {scalar_t__ curr_fmmode; TYPE_1__ rx; } ;


 int ENOMEM ;
 int EPERM ;
 scalar_t__ FM_MODE_RX ;
 int FM_RX_VOLUME_GAIN_STEP ;
 int fmerr (char*) ;

int fm_rx_get_volume(struct fmdev *fmdev, u16 *curr_vol)
{
 if (fmdev->curr_fmmode != FM_MODE_RX)
  return -EPERM;

 if (curr_vol == ((void*)0)) {
  fmerr("Invalid memory\n");
  return -ENOMEM;
 }

 *curr_vol = fmdev->rx.volume / FM_RX_VOLUME_GAIN_STEP;

 return 0;
}
