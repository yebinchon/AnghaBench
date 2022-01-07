
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {int tuner; int type; int frequency; } ;
struct msi2500_dev {int v4l2_subdev; int f_adc; int dev; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_TUNER_RF ;
 int dev_dbg (int ,char*,int,int ) ;
 int g_frequency ;
 int tuner ;
 int v4l2_subdev_call (int ,int ,int ,struct v4l2_frequency*) ;
 struct msi2500_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int msi2500_g_frequency(struct file *file, void *priv,
          struct v4l2_frequency *f)
{
 struct msi2500_dev *dev = video_drvdata(file);
 int ret = 0;

 dev_dbg(dev->dev, "tuner=%d type=%d\n", f->tuner, f->type);

 if (f->tuner == 0) {
  f->frequency = dev->f_adc;
  ret = 0;
 } else if (f->tuner == 1) {
  f->type = V4L2_TUNER_RF;
  ret = v4l2_subdev_call(dev->v4l2_subdev, tuner, g_frequency, f);
 } else {
  ret = -EINVAL;
 }

 return ret;
}
