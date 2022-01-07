
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct sh_vou_device {scalar_t__ status; int fop_lock; TYPE_1__ v4l2_dev; } ;
struct file {int dummy; } ;


 int ERESTARTSYS ;
 scalar_t__ SH_VOU_IDLE ;
 scalar_t__ SH_VOU_INITIALISING ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put (int ) ;
 int sh_vou_hw_init (struct sh_vou_device*) ;
 scalar_t__ v4l2_fh_is_singular_file (struct file*) ;
 int v4l2_fh_open (struct file*) ;
 int v4l2_fh_release (struct file*) ;
 struct sh_vou_device* video_drvdata (struct file*) ;

__attribute__((used)) static int sh_vou_open(struct file *file)
{
 struct sh_vou_device *vou_dev = video_drvdata(file);
 int err;

 if (mutex_lock_interruptible(&vou_dev->fop_lock))
  return -ERESTARTSYS;

 err = v4l2_fh_open(file);
 if (err)
  goto done_open;
 if (v4l2_fh_is_singular_file(file) &&
     vou_dev->status == SH_VOU_INITIALISING) {

  pm_runtime_get_sync(vou_dev->v4l2_dev.dev);
  err = sh_vou_hw_init(vou_dev);
  if (err < 0) {
   pm_runtime_put(vou_dev->v4l2_dev.dev);
   v4l2_fh_release(file);
  } else {
   vou_dev->status = SH_VOU_IDLE;
  }
 }
done_open:
 mutex_unlock(&vou_dev->fop_lock);
 return err;
}
