
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int volume; } ;
struct fmdev {scalar_t__ curr_fmmode; TYPE_1__ rx; } ;
typedef int payload ;


 int EINVAL ;
 int EPERM ;
 scalar_t__ FM_MODE_RX ;
 int FM_RX_VOLUME_GAIN_STEP ;
 int FM_RX_VOLUME_MAX ;
 int FM_RX_VOLUME_MIN ;
 int REG_WR ;
 int VOLUME_SET ;
 int fmc_send_cmd (struct fmdev*,int ,int ,int *,int,int *,int *) ;
 int fmerr (char*,int ,int ) ;

int fm_rx_set_volume(struct fmdev *fmdev, u16 vol_to_set)
{
 u16 payload;
 int ret;

 if (fmdev->curr_fmmode != FM_MODE_RX)
  return -EPERM;

 if (vol_to_set > FM_RX_VOLUME_MAX) {
  fmerr("Volume is not within(%d-%d) range\n",
      FM_RX_VOLUME_MIN, FM_RX_VOLUME_MAX);
  return -EINVAL;
 }
 vol_to_set *= FM_RX_VOLUME_GAIN_STEP;

 payload = vol_to_set;
 ret = fmc_send_cmd(fmdev, VOLUME_SET, REG_WR, &payload,
   sizeof(payload), ((void*)0), ((void*)0));
 if (ret < 0)
  return ret;

 fmdev->rx.volume = vol_to_set;
 return ret;
}
