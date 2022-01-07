
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int v4l2_std_id ;
struct file {struct cx231xx_fh* private_data; } ;
struct cx231xx_fh {struct cx231xx* dev; } ;
struct TYPE_2__ {int id; } ;
struct cx231xx {TYPE_1__ encodernorm; } ;



__attribute__((used)) static int vidioc_g_std(struct file *file, void *fh0, v4l2_std_id *norm)
{
 struct cx231xx_fh *fh = file->private_data;
 struct cx231xx *dev = fh->dev;

 *norm = dev->encodernorm.id;
 return 0;
}
