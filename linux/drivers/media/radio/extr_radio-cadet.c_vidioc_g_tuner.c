
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_tuner {int capability; int rangelow; int rangehigh; int signal; int audmode; int rxsubchans; int name; int type; scalar_t__ index; } ;
struct file {int dummy; } ;
struct cadet {int sigstrength; scalar_t__ io; scalar_t__ is_fm_band; } ;
struct TYPE_2__ {int capability; int rangelow; int rangehigh; } ;


 int EINVAL ;
 int V4L2_TUNER_MODE_STEREO ;
 int V4L2_TUNER_RADIO ;
 int V4L2_TUNER_SUB_MONO ;
 int V4L2_TUNER_SUB_RDS ;
 TYPE_1__* bands ;
 int cadet_getstereo (struct cadet*) ;
 int inb (scalar_t__) ;
 int mdelay (int) ;
 int outb (int,scalar_t__) ;
 int strscpy (int ,char*,int) ;
 struct cadet* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_tuner(struct file *file, void *priv,
    struct v4l2_tuner *v)
{
 struct cadet *dev = video_drvdata(file);

 if (v->index)
  return -EINVAL;
 v->type = V4L2_TUNER_RADIO;
 strscpy(v->name, "Radio", sizeof(v->name));
 v->capability = bands[0].capability | bands[1].capability;
 v->rangelow = bands[0].rangelow;
 v->rangehigh = bands[1].rangehigh;
 if (dev->is_fm_band) {
  v->rxsubchans = cadet_getstereo(dev);
  outb(3, dev->io);
  outb(inb(dev->io + 1) & 0x7f, dev->io + 1);
  mdelay(100);
  outb(3, dev->io);
  if (inb(dev->io + 1) & 0x80)
   v->rxsubchans |= V4L2_TUNER_SUB_RDS;
 } else {
  v->rangelow = 8320;
  v->rangehigh = 26400;
  v->rxsubchans = V4L2_TUNER_SUB_MONO;
 }
 v->audmode = V4L2_TUNER_MODE_STEREO;
 v->signal = dev->sigstrength;
 return 0;
}
