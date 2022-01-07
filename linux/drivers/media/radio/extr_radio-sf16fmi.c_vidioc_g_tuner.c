
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {scalar_t__ index; int rxsubchans; int capability; int signal; int audmode; int rangehigh; int rangelow; int type; int name; } ;
struct fmi {int dummy; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int RSF16_MAXFREQ ;
 int RSF16_MINFREQ ;
 int V4L2_TUNER_CAP_LOW ;
 int V4L2_TUNER_CAP_STEREO ;
 int V4L2_TUNER_MODE_STEREO ;
 int V4L2_TUNER_RADIO ;
 int V4L2_TUNER_SUB_MONO ;
 int V4L2_TUNER_SUB_STEREO ;
 int fmi_getsigstr (struct fmi*) ;
 int strscpy (int ,char*,int) ;
 struct fmi* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_tuner(struct file *file, void *priv,
     struct v4l2_tuner *v)
{
 struct fmi *fmi = video_drvdata(file);

 if (v->index > 0)
  return -EINVAL;

 strscpy(v->name, "FM", sizeof(v->name));
 v->type = V4L2_TUNER_RADIO;
 v->rangelow = RSF16_MINFREQ;
 v->rangehigh = RSF16_MAXFREQ;
 v->rxsubchans = V4L2_TUNER_SUB_MONO | V4L2_TUNER_SUB_STEREO;
 v->capability = V4L2_TUNER_CAP_STEREO | V4L2_TUNER_CAP_LOW;
 v->audmode = V4L2_TUNER_MODE_STEREO;
 v->signal = fmi_getsigstr(fmi);
 return 0;
}
