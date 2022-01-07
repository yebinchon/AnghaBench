
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 long __mptctl_ioctl (struct file*,unsigned int,unsigned long) ;
 int mpctl_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static long
mptctl_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
{
 long ret;
 mutex_lock(&mpctl_mutex);
 ret = __mptctl_ioctl(file, cmd, arg);
 mutex_unlock(&mpctl_mutex);
 return ret;
}
