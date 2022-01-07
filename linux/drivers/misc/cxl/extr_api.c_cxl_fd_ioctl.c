
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 long afu_ioctl (struct file*,unsigned int,unsigned long) ;

long cxl_fd_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
{
 return afu_ioctl(file, cmd, arg);
}
