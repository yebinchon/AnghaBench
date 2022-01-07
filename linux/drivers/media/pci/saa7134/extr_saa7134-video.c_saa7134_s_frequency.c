
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {scalar_t__ tuner; } ;
struct saa7134_dev {int dummy; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int s_frequency ;
 int saa7134_tvaudio_do_scan (struct saa7134_dev*) ;
 int saa_call_all (struct saa7134_dev*,int ,int ,struct v4l2_frequency const*) ;
 int tuner ;
 struct saa7134_dev* video_drvdata (struct file*) ;

int saa7134_s_frequency(struct file *file, void *priv,
     const struct v4l2_frequency *f)
{
 struct saa7134_dev *dev = video_drvdata(file);

 if (0 != f->tuner)
  return -EINVAL;

 saa_call_all(dev, tuner, s_frequency, f);

 saa7134_tvaudio_do_scan(dev);
 return 0;
}
