
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_tuner {scalar_t__ index; int audmode; } ;
struct TYPE_2__ {int mode; } ;
struct saa7134_dev {TYPE_1__ thread; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int UNSET ;
 int saa7134_tvaudio_getstereo (struct saa7134_dev*) ;
 int saa7134_tvaudio_rx2mode (int) ;
 struct saa7134_dev* video_drvdata (struct file*) ;

int saa7134_s_tuner(struct file *file, void *priv,
     const struct v4l2_tuner *t)
{
 struct saa7134_dev *dev = video_drvdata(file);
 int rx, mode;

 if (0 != t->index)
  return -EINVAL;

 mode = dev->thread.mode;
 if (UNSET == mode) {
  rx = saa7134_tvaudio_getstereo(dev);
  mode = saa7134_tvaudio_rx2mode(rx);
 }
 if (mode != t->audmode)
  dev->thread.mode = t->audmode;

 return 0;
}
