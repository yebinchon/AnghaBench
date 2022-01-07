
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {int index; } ;
struct msi2500_dev {int v4l2_subdev; int dev; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int dev_dbg (int ,char*,int) ;
 int s_tuner ;
 int tuner ;
 int v4l2_subdev_call (int ,int ,int ,struct v4l2_tuner const*) ;
 struct msi2500_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int msi2500_s_tuner(struct file *file, void *priv,
      const struct v4l2_tuner *v)
{
 struct msi2500_dev *dev = video_drvdata(file);
 int ret;

 dev_dbg(dev->dev, "index=%d\n", v->index);

 if (v->index == 0)
  ret = 0;
 else if (v->index == 1)
  ret = v4l2_subdev_call(dev->v4l2_subdev, tuner, s_tuner, v);
 else
  ret = -EINVAL;

 return ret;
}
