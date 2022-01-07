
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;


 int mlx5i_ioctl (struct net_device*,struct ifreq*,int) ;

__attribute__((used)) static int mlx5i_pkey_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd)
{
 return mlx5i_ioctl(dev, ifr, cmd);
}
