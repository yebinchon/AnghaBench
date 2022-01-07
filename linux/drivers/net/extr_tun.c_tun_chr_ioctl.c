
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {int dummy; } ;
struct file {int dummy; } ;


 long __tun_chr_ioctl (struct file*,unsigned int,unsigned long,int) ;

__attribute__((used)) static long tun_chr_ioctl(struct file *file,
     unsigned int cmd, unsigned long arg)
{
 return __tun_chr_ioctl(file, cmd, arg, sizeof (struct ifreq));
}
