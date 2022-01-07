
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct media_devnode {int dummy; } ;
struct file {int dummy; } ;


 long EIO ;
 long ENOTTY ;
 struct media_devnode* media_devnode_data (struct file*) ;
 int media_devnode_is_registered (struct media_devnode*) ;

__attribute__((used)) static long
__media_ioctl(struct file *filp, unsigned int cmd, unsigned long arg,
       long (*ioctl_func)(struct file *filp, unsigned int cmd,
     unsigned long arg))
{
 struct media_devnode *devnode = media_devnode_data(filp);

 if (!ioctl_func)
  return -ENOTTY;

 if (!media_devnode_is_registered(devnode))
  return -EIO;

 return ioctl_func(filp, cmd, arg);
}
