
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct v4l2_tuner {scalar_t__ index; int rangelow; int rangehigh; int rxsubchans; int capability; int signal; scalar_t__ afc; int audmode; int type; int name; } ;
struct TYPE_3__ {scalar_t__ flag; } ;
struct TYPE_4__ {TYPE_1__ rds; } ;
struct fmdev {scalar_t__ curr_fmmode; TYPE_2__ rx; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int EPERM ;
 scalar_t__ FM_MODE_RX ;
 scalar_t__ FM_RDS_ENABLE ;
 int V4L2_TUNER_CAP_HWSEEK_BOUNDED ;
 int V4L2_TUNER_CAP_HWSEEK_WRAP ;
 int V4L2_TUNER_CAP_LOW ;
 int V4L2_TUNER_CAP_RDS ;
 int V4L2_TUNER_CAP_STEREO ;
 int V4L2_TUNER_MODE_MONO ;
 int V4L2_TUNER_MODE_STEREO ;
 int V4L2_TUNER_RADIO ;
 int V4L2_TUNER_SUB_MONO ;
 int V4L2_TUNER_SUB_RDS ;
 int V4L2_TUNER_SUB_STEREO ;
 int fm_rx_get_band_freq_range (struct fmdev*,int*,int*) ;
 int fm_rx_get_rssi_level (struct fmdev*,int*) ;
 int fm_rx_get_stereo_mono (struct fmdev*,int*) ;
 int strscpy (int ,char*,int) ;
 struct fmdev* video_drvdata (struct file*) ;

__attribute__((used)) static int fm_v4l2_vidioc_g_tuner(struct file *file, void *priv,
  struct v4l2_tuner *tuner)
{
 struct fmdev *fmdev = video_drvdata(file);
 u32 bottom_freq;
 u32 top_freq;
 u16 stereo_mono_mode;
 u16 rssilvl;
 int ret;

 if (tuner->index != 0)
  return -EINVAL;

 if (fmdev->curr_fmmode != FM_MODE_RX)
  return -EPERM;

 ret = fm_rx_get_band_freq_range(fmdev, &bottom_freq, &top_freq);
 if (ret != 0)
  return ret;

 ret = fm_rx_get_stereo_mono(fmdev, &stereo_mono_mode);
 if (ret != 0)
  return ret;

 ret = fm_rx_get_rssi_level(fmdev, &rssilvl);
 if (ret != 0)
  return ret;

 strscpy(tuner->name, "FM", sizeof(tuner->name));
 tuner->type = V4L2_TUNER_RADIO;

 tuner->rangelow = bottom_freq * 16;
 tuner->rangehigh = top_freq * 16;
 tuner->rxsubchans = V4L2_TUNER_SUB_MONO | V4L2_TUNER_SUB_STEREO |
 ((fmdev->rx.rds.flag == FM_RDS_ENABLE) ? V4L2_TUNER_SUB_RDS : 0);
 tuner->capability = V4L2_TUNER_CAP_STEREO | V4L2_TUNER_CAP_RDS |
       V4L2_TUNER_CAP_LOW |
       V4L2_TUNER_CAP_HWSEEK_BOUNDED |
       V4L2_TUNER_CAP_HWSEEK_WRAP;
 tuner->audmode = (stereo_mono_mode ?
     V4L2_TUNER_MODE_MONO : V4L2_TUNER_MODE_STEREO);





 rssilvl += 128;





 tuner->signal = rssilvl * 257;
 tuner->afc = 0;

 return ret;
}
