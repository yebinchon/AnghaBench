
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 long device_ioctl (struct file*,unsigned int,unsigned long) ;

__attribute__((used)) static long device_compat_ioctl(struct file *file, unsigned int cmd,
    unsigned long arg)
{
 return device_ioctl(file, cmd, arg);
}
