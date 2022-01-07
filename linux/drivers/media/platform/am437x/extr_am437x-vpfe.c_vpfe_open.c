
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpfe_device {int lock; } ;
struct file {int dummy; } ;


 int ENODEV ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int v4l2_fh_is_singular_file (struct file*) ;
 int v4l2_fh_open (struct file*) ;
 int v4l2_fh_release (struct file*) ;
 struct vpfe_device* video_drvdata (struct file*) ;
 int vpfe_err (struct vpfe_device*,char*) ;
 scalar_t__ vpfe_initialize_device (struct vpfe_device*) ;

__attribute__((used)) static int vpfe_open(struct file *file)
{
 struct vpfe_device *vpfe = video_drvdata(file);
 int ret;

 mutex_lock(&vpfe->lock);

 ret = v4l2_fh_open(file);
 if (ret) {
  vpfe_err(vpfe, "v4l2_fh_open failed\n");
  goto unlock;
 }

 if (!v4l2_fh_is_singular_file(file))
  goto unlock;

 if (vpfe_initialize_device(vpfe)) {
  v4l2_fh_release(file);
  ret = -ENODEV;
 }

unlock:
 mutex_unlock(&vpfe->lock);
 return ret;
}
