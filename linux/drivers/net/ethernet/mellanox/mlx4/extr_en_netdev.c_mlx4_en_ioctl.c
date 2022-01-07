
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;


 int EOPNOTSUPP ;


 int mlx4_en_hwtstamp_get (struct net_device*,struct ifreq*) ;
 int mlx4_en_hwtstamp_set (struct net_device*,struct ifreq*) ;

__attribute__((used)) static int mlx4_en_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd)
{
 switch (cmd) {
 case 128:
  return mlx4_en_hwtstamp_set(dev, ifr);
 case 129:
  return mlx4_en_hwtstamp_get(dev, ifr);
 default:
  return -EOPNOTSUPP;
 }
}
