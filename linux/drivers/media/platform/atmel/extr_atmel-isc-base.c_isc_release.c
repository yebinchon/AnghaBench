
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct isc_device {int lock; TYPE_1__* current_subdev; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct v4l2_subdev* sd; } ;


 int _vb2_fop_release (struct file*,int *) ;
 int core ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int s_power ;
 int v4l2_fh_is_singular_file (struct file*) ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,int ) ;
 struct isc_device* video_drvdata (struct file*) ;

__attribute__((used)) static int isc_release(struct file *file)
{
 struct isc_device *isc = video_drvdata(file);
 struct v4l2_subdev *sd = isc->current_subdev->sd;
 bool fh_singular;
 int ret;

 mutex_lock(&isc->lock);

 fh_singular = v4l2_fh_is_singular_file(file);

 ret = _vb2_fop_release(file, ((void*)0));

 if (fh_singular)
  v4l2_subdev_call(sd, core, s_power, 0);

 mutex_unlock(&isc->lock);

 return ret;
}
