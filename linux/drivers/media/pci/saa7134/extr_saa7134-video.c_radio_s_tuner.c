
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {scalar_t__ index; } ;
struct saa7134_dev {int dummy; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int s_tuner ;
 int saa_call_all (struct saa7134_dev*,int ,int ,struct v4l2_tuner const*) ;
 int tuner ;
 struct saa7134_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int radio_s_tuner(struct file *file, void *priv,
     const struct v4l2_tuner *t)
{
 struct saa7134_dev *dev = video_drvdata(file);

 if (0 != t->index)
  return -EINVAL;

 saa_call_all(dev, tuner, s_tuner, t);
 return 0;
}
