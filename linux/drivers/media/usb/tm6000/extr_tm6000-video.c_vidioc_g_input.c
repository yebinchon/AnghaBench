
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm6000_fh {struct tm6000_core* dev; } ;
struct tm6000_core {unsigned int input; } ;
struct file {int dummy; } ;



__attribute__((used)) static int vidioc_g_input(struct file *file, void *priv, unsigned int *i)
{
 struct tm6000_fh *fh = priv;
 struct tm6000_core *dev = fh->dev;

 *i = dev->input;

 return 0;
}
