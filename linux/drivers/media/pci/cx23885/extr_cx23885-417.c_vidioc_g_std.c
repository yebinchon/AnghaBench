
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct file {int dummy; } ;
struct cx23885_dev {int tvnorm; } ;


 struct cx23885_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_std(struct file *file, void *priv, v4l2_std_id *id)
{
 struct cx23885_dev *dev = video_drvdata(file);

 *id = dev->tvnorm;
 return 0;
}
