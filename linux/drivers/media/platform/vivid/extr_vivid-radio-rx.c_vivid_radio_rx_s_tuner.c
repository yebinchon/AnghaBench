
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vivid_dev {int radio_rx_audmode; } ;
struct v4l2_tuner {scalar_t__ audmode; scalar_t__ index; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_TUNER_MODE_STEREO ;
 struct vivid_dev* video_drvdata (struct file*) ;

int vivid_radio_rx_s_tuner(struct file *file, void *fh, const struct v4l2_tuner *vt)
{
 struct vivid_dev *dev = video_drvdata(file);

 if (vt->index)
  return -EINVAL;
 dev->radio_rx_audmode = vt->audmode >= V4L2_TUNER_MODE_STEREO;
 return 0;
}
