
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vivid_dev {unsigned int output; } ;
struct file {int dummy; } ;


 struct vivid_dev* video_drvdata (struct file*) ;

int vidioc_g_output(struct file *file, void *priv, unsigned *o)
{
 struct vivid_dev *dev = video_drvdata(file);

 *o = dev->output;
 return 0;
}
