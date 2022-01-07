
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcm20 {int * kthread; } ;
struct file {int dummy; } ;


 int IS_ERR_OR_NULL (int *) ;
 int kthread_stop (int *) ;
 scalar_t__ v4l2_fh_is_singular_file (struct file*) ;
 int v4l2_fh_release (struct file*) ;
 struct pcm20* video_drvdata (struct file*) ;

__attribute__((used)) static int pcm20_release(struct file *file)
{
 struct pcm20 *dev = video_drvdata(file);

 if (v4l2_fh_is_singular_file(file) && !IS_ERR_OR_NULL(dev->kthread)) {
  kthread_stop(dev->kthread);
  dev->kthread = ((void*)0);
 }
 return v4l2_fh_release(file);
}
