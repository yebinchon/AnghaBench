
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsi108_prv_data {int mii_if; } ;
struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;


 int EINVAL ;
 int generic_mii_ioctl (int *,int ,int,int *) ;
 int if_mii (struct ifreq*) ;
 struct tsi108_prv_data* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;

__attribute__((used)) static int tsi108_do_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
{
 struct tsi108_prv_data *data = netdev_priv(dev);
 if (!netif_running(dev))
  return -EINVAL;
 return generic_mii_ioctl(&data->mii_if, if_mii(rq), cmd, ((void*)0));
}
