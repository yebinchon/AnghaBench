
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct cadet {int lock; int read_queue; } ;


 int init_waitqueue_head (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ v4l2_fh_is_singular_file (struct file*) ;
 int v4l2_fh_open (struct file*) ;
 struct cadet* video_drvdata (struct file*) ;

__attribute__((used)) static int cadet_open(struct file *file)
{
 struct cadet *dev = video_drvdata(file);
 int err;

 mutex_lock(&dev->lock);
 err = v4l2_fh_open(file);
 if (err)
  goto fail;
 if (v4l2_fh_is_singular_file(file))
  init_waitqueue_head(&dev->read_queue);
fail:
 mutex_unlock(&dev->lock);
 return err;
}
