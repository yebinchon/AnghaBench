
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct pcm20 {int kthread; TYPE_1__ v4l2_dev; } ;
struct file {int dummy; } ;


 scalar_t__ IS_ERR (int ) ;
 scalar_t__ IS_ERR_OR_NULL (int ) ;
 int PTR_ERR (int ) ;
 int kthread_run (int ,struct pcm20*,char*,int ) ;
 int pcm20_thread ;
 int v4l2_err (TYPE_1__*,char*) ;
 scalar_t__ v4l2_fh_is_singular_file (struct file*) ;
 int v4l2_fh_open (struct file*) ;
 int v4l2_fh_release (struct file*) ;
 struct pcm20* video_drvdata (struct file*) ;

__attribute__((used)) static int pcm20_open(struct file *file)
{
 struct pcm20 *dev = video_drvdata(file);
 int res = v4l2_fh_open(file);

 if (!res && v4l2_fh_is_singular_file(file) &&
     IS_ERR_OR_NULL(dev->kthread)) {
  dev->kthread = kthread_run(pcm20_thread, dev, "%s",
        dev->v4l2_dev.name);
  if (IS_ERR(dev->kthread)) {
   v4l2_err(&dev->v4l2_dev, "kernel_thread() failed\n");
   v4l2_fh_release(file);
   return PTR_ERR(dev->kthread);
  }
 }
 return res;
}
