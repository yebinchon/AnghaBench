
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vivid_dev {scalar_t__ tv_audmode; } ;
struct v4l2_tuner {scalar_t__ index; scalar_t__ audmode; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_TUNER_MODE_LANG1_LANG2 ;
 struct vivid_dev* video_drvdata (struct file*) ;

int vivid_video_s_tuner(struct file *file, void *fh, const struct v4l2_tuner *vt)
{
 struct vivid_dev *dev = video_drvdata(file);

 if (vt->index != 0)
  return -EINVAL;
 if (vt->audmode > V4L2_TUNER_MODE_LANG1_LANG2)
  return -EINVAL;
 dev->tv_audmode = vt->audmode;
 return 0;
}
