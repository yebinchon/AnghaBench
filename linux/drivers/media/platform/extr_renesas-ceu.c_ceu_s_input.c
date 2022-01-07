
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct ceu_subdev {int v4l2_sd; } ;
struct ceu_device {unsigned int num_sd; unsigned int sd_index; struct ceu_subdev* sd; struct ceu_subdev* subdevs; int vb2_vq; } ;


 int EBUSY ;
 int EINVAL ;
 int ceu_init_mbus_fmt (struct ceu_device*) ;
 int ceu_set_default_fmt (struct ceu_device*) ;
 int core ;
 int s_power ;
 int v4l2_subdev_call (int ,int ,int ,int) ;
 scalar_t__ vb2_is_streaming (int *) ;
 struct ceu_device* video_drvdata (struct file*) ;

__attribute__((used)) static int ceu_s_input(struct file *file, void *priv, unsigned int i)
{
 struct ceu_device *ceudev = video_drvdata(file);
 struct ceu_subdev *ceu_sd_old;
 int ret;

 if (i >= ceudev->num_sd)
  return -EINVAL;

 if (vb2_is_streaming(&ceudev->vb2_vq))
  return -EBUSY;

 if (i == ceudev->sd_index)
  return 0;

 ceu_sd_old = ceudev->sd;
 ceudev->sd = &ceudev->subdevs[i];





 ret = ceu_init_mbus_fmt(ceudev);
 if (ret) {
  ceudev->sd = ceu_sd_old;
  return -EINVAL;
 }

 ret = ceu_set_default_fmt(ceudev);
 if (ret) {
  ceudev->sd = ceu_sd_old;
  return -EINVAL;
 }


 v4l2_subdev_call(ceu_sd_old->v4l2_sd, core, s_power, 0);
 v4l2_subdev_call(ceudev->sd->v4l2_sd, core, s_power, 1);

 ceudev->sd_index = i;

 return 0;
}
