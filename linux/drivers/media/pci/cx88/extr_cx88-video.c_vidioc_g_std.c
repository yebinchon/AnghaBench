
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct file {int dummy; } ;
struct cx88_core {int tvnorm; } ;
struct cx8800_dev {struct cx88_core* core; } ;


 struct cx8800_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_std(struct file *file, void *priv, v4l2_std_id *tvnorm)
{
 struct cx8800_dev *dev = video_drvdata(file);
 struct cx88_core *core = dev->core;

 *tvnorm = core->tvnorm;
 return 0;
}
