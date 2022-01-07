
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_camera_dev {int mlock; } ;
struct file {int dummy; } ;


 int _vb2_fop_release (struct file*,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pxac_sensor_set_power (struct pxa_camera_dev*,int ) ;
 int v4l2_fh_is_singular_file (struct file*) ;
 struct pxa_camera_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int pxac_fops_camera_release(struct file *filp)
{
 struct pxa_camera_dev *pcdev = video_drvdata(filp);
 int ret;
 bool fh_singular;

 mutex_lock(&pcdev->mlock);

 fh_singular = v4l2_fh_is_singular_file(filp);

 ret = _vb2_fop_release(filp, ((void*)0));

 if (fh_singular)
  ret = pxac_sensor_set_power(pcdev, 0);

 mutex_unlock(&pcdev->mlock);

 return ret;
}
