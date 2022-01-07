
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {struct v4l2_subdev* source; } ;
struct stm32_dcmi {int lock; int fmt; TYPE_1__ entity; } ;
struct file {int dummy; } ;


 int ENOIOCTLCMD ;
 int ERESTARTSYS ;
 int core ;
 int dcmi_set_fmt (struct stm32_dcmi*,int *) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int s_power ;
 int v4l2_fh_is_singular_file (struct file*) ;
 int v4l2_fh_open (struct file*) ;
 int v4l2_fh_release (struct file*) ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,int) ;
 struct stm32_dcmi* video_drvdata (struct file*) ;

__attribute__((used)) static int dcmi_open(struct file *file)
{
 struct stm32_dcmi *dcmi = video_drvdata(file);
 struct v4l2_subdev *sd = dcmi->entity.source;
 int ret;

 if (mutex_lock_interruptible(&dcmi->lock))
  return -ERESTARTSYS;

 ret = v4l2_fh_open(file);
 if (ret < 0)
  goto unlock;

 if (!v4l2_fh_is_singular_file(file))
  goto fh_rel;

 ret = v4l2_subdev_call(sd, core, s_power, 1);
 if (ret < 0 && ret != -ENOIOCTLCMD)
  goto fh_rel;

 ret = dcmi_set_fmt(dcmi, &dcmi->fmt);
 if (ret)
  v4l2_subdev_call(sd, core, s_power, 0);
fh_rel:
 if (ret)
  v4l2_fh_release(file);
unlock:
 mutex_unlock(&dcmi->lock);
 return ret;
}
