
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {struct v4l2_subdev* source; } ;
struct stm32_dcmi {int lock; TYPE_1__ entity; } ;
struct file {int dummy; } ;


 int _vb2_fop_release (struct file*,int *) ;
 int core ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int s_power ;
 int v4l2_fh_is_singular_file (struct file*) ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,int ) ;
 struct stm32_dcmi* video_drvdata (struct file*) ;

__attribute__((used)) static int dcmi_release(struct file *file)
{
 struct stm32_dcmi *dcmi = video_drvdata(file);
 struct v4l2_subdev *sd = dcmi->entity.source;
 bool fh_singular;
 int ret;

 mutex_lock(&dcmi->lock);

 fh_singular = v4l2_fh_is_singular_file(file);

 ret = _vb2_fop_release(file, ((void*)0));

 if (fh_singular)
  v4l2_subdev_call(sd, core, s_power, 0);

 mutex_unlock(&dcmi->lock);

 return ret;
}
