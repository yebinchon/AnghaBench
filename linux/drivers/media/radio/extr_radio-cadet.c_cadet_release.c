
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct cadet {int lock; scalar_t__ rdsstat; int readtimer; } ;


 int del_timer_sync (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ v4l2_fh_is_singular_file (struct file*) ;
 int v4l2_fh_release (struct file*) ;
 struct cadet* video_drvdata (struct file*) ;

__attribute__((used)) static int cadet_release(struct file *file)
{
 struct cadet *dev = video_drvdata(file);

 mutex_lock(&dev->lock);
 if (v4l2_fh_is_singular_file(file) && dev->rdsstat) {
  del_timer_sync(&dev->readtimer);
  dev->rdsstat = 0;
 }
 v4l2_fh_release(file);
 mutex_unlock(&dev->lock);
 return 0;
}
