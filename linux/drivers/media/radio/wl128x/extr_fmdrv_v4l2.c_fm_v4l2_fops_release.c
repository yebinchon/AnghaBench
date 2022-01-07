
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fmdev {int mutex; } ;
struct file {int dummy; } ;


 int FM_MODE_OFF ;
 int fmc_release (struct fmdev*) ;
 int fmc_set_mode (struct fmdev*,int ) ;
 int fmdbg (char*) ;
 int fmerr (char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ radio_disconnected ;
 struct fmdev* video_drvdata (struct file*) ;

__attribute__((used)) static int fm_v4l2_fops_release(struct file *file)
{
 int ret;
 struct fmdev *fmdev;

 fmdev = video_drvdata(file);
 if (!radio_disconnected) {
  fmdbg("FM device is already closed\n");
  return 0;
 }

 mutex_lock(&fmdev->mutex);
 ret = fmc_set_mode(fmdev, FM_MODE_OFF);
 if (ret < 0) {
  fmerr("Unable to turn off the chip\n");
  goto release_unlock;
 }

 ret = fmc_release(fmdev);
 if (ret < 0) {
  fmerr("FM CORE release failed\n");
  goto release_unlock;
 }
 radio_disconnected = 0;

release_unlock:
 mutex_unlock(&fmdev->mutex);
 return ret;
}
