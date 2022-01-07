
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {scalar_t__ tuner; } ;
struct saa7134_dev {int dummy; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int g_frequency ;
 int saa_call_all (struct saa7134_dev*,int ,int ,struct v4l2_frequency*) ;
 int tuner ;
 struct saa7134_dev* video_drvdata (struct file*) ;

int saa7134_g_frequency(struct file *file, void *priv,
     struct v4l2_frequency *f)
{
 struct saa7134_dev *dev = video_drvdata(file);

 if (0 != f->tuner)
  return -EINVAL;

 saa_call_all(dev, tuner, g_frequency, f);

 return 0;
}
