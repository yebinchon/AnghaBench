
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct sh_vou_device {int fop_lock; TYPE_1__ v4l2_dev; int status; } ;
struct file {int dummy; } ;


 int SH_VOU_INITIALISING ;
 int VOUER ;
 int _vb2_fop_release (struct file*,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_put (int ) ;
 int sh_vou_reg_a_set (struct sh_vou_device*,int ,int ,int) ;
 int v4l2_fh_is_singular_file (struct file*) ;
 struct sh_vou_device* video_drvdata (struct file*) ;

__attribute__((used)) static int sh_vou_release(struct file *file)
{
 struct sh_vou_device *vou_dev = video_drvdata(file);
 bool is_last;

 mutex_lock(&vou_dev->fop_lock);
 is_last = v4l2_fh_is_singular_file(file);
 _vb2_fop_release(file, ((void*)0));
 if (is_last) {

  vou_dev->status = SH_VOU_INITIALISING;
  sh_vou_reg_a_set(vou_dev, VOUER, 0, 0x101);
  pm_runtime_put(vou_dev->v4l2_dev.dev);
 }
 mutex_unlock(&vou_dev->fop_lock);
 return 0;
}
