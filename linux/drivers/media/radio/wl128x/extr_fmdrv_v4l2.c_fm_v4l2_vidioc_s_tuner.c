
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct v4l2_tuner {scalar_t__ index; scalar_t__ audmode; int rxsubchans; } ;
struct fmdev {scalar_t__ curr_fmmode; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ FM_MODE_RX ;
 int FM_MONO_MODE ;
 int FM_RDS_DISABLE ;
 int FM_RDS_ENABLE ;
 int FM_STEREO_MODE ;
 scalar_t__ V4L2_TUNER_MODE_STEREO ;
 int V4L2_TUNER_SUB_RDS ;
 int fmc_set_mode (struct fmdev*,scalar_t__) ;
 int fmc_set_rds_mode (struct fmdev*,int ) ;
 int fmc_set_stereo_mono (struct fmdev*,int ) ;
 int fmerr (char*) ;
 struct fmdev* video_drvdata (struct file*) ;

__attribute__((used)) static int fm_v4l2_vidioc_s_tuner(struct file *file, void *priv,
  const struct v4l2_tuner *tuner)
{
 struct fmdev *fmdev = video_drvdata(file);
 u16 aud_mode;
 u8 rds_mode;
 int ret;

 if (tuner->index != 0)
  return -EINVAL;

 aud_mode = (tuner->audmode == V4L2_TUNER_MODE_STEREO) ?
   FM_STEREO_MODE : FM_MONO_MODE;
 rds_mode = (tuner->rxsubchans & V4L2_TUNER_SUB_RDS) ?
   FM_RDS_ENABLE : FM_RDS_DISABLE;

 if (fmdev->curr_fmmode != FM_MODE_RX) {
  ret = fmc_set_mode(fmdev, FM_MODE_RX);
  if (ret < 0) {
   fmerr("Failed to set RX mode\n");
   return ret;
  }
 }

 ret = fmc_set_stereo_mono(fmdev, aud_mode);
 if (ret < 0) {
  fmerr("Failed to set RX stereo/mono mode\n");
  return ret;
 }

 ret = fmc_set_rds_mode(fmdev, rds_mode);
 if (ret < 0)
  fmerr("Failed to set RX RDS mode\n");

 return ret;
}
