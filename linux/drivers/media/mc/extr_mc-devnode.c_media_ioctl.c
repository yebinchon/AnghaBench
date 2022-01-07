
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct media_devnode {TYPE_1__* fops; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int ioctl; } ;


 long __media_ioctl (struct file*,unsigned int,unsigned long,int ) ;
 struct media_devnode* media_devnode_data (struct file*) ;

__attribute__((used)) static long media_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
{
 struct media_devnode *devnode = media_devnode_data(filp);

 return __media_ioctl(filp, cmd, arg, devnode->fops->ioctl);
}
