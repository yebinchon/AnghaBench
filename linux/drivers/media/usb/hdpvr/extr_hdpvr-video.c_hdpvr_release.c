
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdpvr_device {scalar_t__ owner; int io_mutex; } ;
struct file {scalar_t__ private_data; } ;


 int hdpvr_stop_streaming (struct hdpvr_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int v4l2_fh_release (struct file*) ;
 struct hdpvr_device* video_drvdata (struct file*) ;

__attribute__((used)) static int hdpvr_release(struct file *file)
{
 struct hdpvr_device *dev = video_drvdata(file);

 mutex_lock(&dev->io_mutex);
 if (file->private_data == dev->owner) {
  hdpvr_stop_streaming(dev);
  dev->owner = ((void*)0);
 }
 mutex_unlock(&dev->io_mutex);

 return v4l2_fh_release(file);
}
