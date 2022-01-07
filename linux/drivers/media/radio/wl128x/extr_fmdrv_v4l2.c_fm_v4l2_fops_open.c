
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fmdev {int mutex; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int ERESTARTSYS ;
 int FM_MODE_RX ;
 int fmc_prepare (struct fmdev*) ;
 int fmc_set_mode (struct fmdev*,int ) ;
 int fmdbg (char*) ;
 int fmerr (char*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int radio_disconnected ;
 struct fmdev* video_drvdata (struct file*) ;

__attribute__((used)) static int fm_v4l2_fops_open(struct file *file)
{
 int ret;
 struct fmdev *fmdev = ((void*)0);


 if (radio_disconnected) {
  fmerr("FM device is already opened\n");
  return -EBUSY;
 }

 fmdev = video_drvdata(file);

 if (mutex_lock_interruptible(&fmdev->mutex))
  return -ERESTARTSYS;
 ret = fmc_prepare(fmdev);
 if (ret < 0) {
  fmerr("Unable to prepare FM CORE\n");
  goto open_unlock;
 }

 fmdbg("Load FM RX firmware..\n");

 ret = fmc_set_mode(fmdev, FM_MODE_RX);
 if (ret < 0) {
  fmerr("Unable to load FM RX firmware\n");
  goto open_unlock;
 }
 radio_disconnected = 1;

open_unlock:
 mutex_unlock(&fmdev->mutex);
 return ret;
}
