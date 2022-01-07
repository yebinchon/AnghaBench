
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct tm6000_fh {struct tm6000_core* dev; } ;
struct tm6000_core {int norm; } ;
struct file {int dummy; } ;



__attribute__((used)) static int vidioc_g_std(struct file *file, void *priv, v4l2_std_id *norm)
{
 struct tm6000_fh *fh = priv;
 struct tm6000_core *dev = fh->dev;

 *norm = dev->norm;
 return 0;
}
