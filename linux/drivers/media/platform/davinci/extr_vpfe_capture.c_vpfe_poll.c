
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpfe_device {int buffer_queue; scalar_t__ started; int v4l2_dev; } ;
struct file {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int debug ;
 int v4l2_dbg (int,int ,int *,char*) ;
 struct vpfe_device* video_drvdata (struct file*) ;
 int videobuf_poll_stream (struct file*,int *,int *) ;

__attribute__((used)) static __poll_t vpfe_poll(struct file *file, poll_table *wait)
{
 struct vpfe_device *vpfe_dev = video_drvdata(file);

 v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_poll\n");

 if (vpfe_dev->started)
  return videobuf_poll_stream(file,
         &vpfe_dev->buffer_queue, wait);
 return 0;
}
