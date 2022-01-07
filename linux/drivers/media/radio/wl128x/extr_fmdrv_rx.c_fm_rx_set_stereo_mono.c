
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct fmdev {int dummy; } ;
typedef int payload ;


 int EINVAL ;
 scalar_t__ FM_MONO_MODE ;
 scalar_t__ FM_STEREO_MODE ;
 scalar_t__ FM_STEREO_SOFT_BLEND ;
 int MOST_BLEND_SET ;
 int MOST_MODE_SET ;
 int REG_WR ;
 int fmc_send_cmd (struct fmdev*,int ,int ,scalar_t__*,int,int *,int *) ;
 int fmerr (char*) ;

int fm_rx_set_stereo_mono(struct fmdev *fmdev, u16 mode)
{
 u16 payload;
 int ret;

 if (mode != FM_STEREO_MODE && mode != FM_MONO_MODE) {
  fmerr("Invalid mode\n");
  return -EINVAL;
 }


 payload = (u16)mode;
 ret = fmc_send_cmd(fmdev, MOST_MODE_SET, REG_WR, &payload,
   sizeof(payload), ((void*)0), ((void*)0));
 if (ret < 0)
  return ret;


 payload = FM_STEREO_SOFT_BLEND;
 ret = fmc_send_cmd(fmdev, MOST_BLEND_SET, REG_WR, &payload,
   sizeof(payload), ((void*)0), ((void*)0));
 if (ret < 0)
  return ret;

 return 0;
}
