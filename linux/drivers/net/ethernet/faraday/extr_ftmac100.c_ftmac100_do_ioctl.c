
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mii_ioctl_data {int dummy; } ;
struct ifreq {int dummy; } ;
struct ftmac100 {int mii; } ;


 int generic_mii_ioctl (int *,struct mii_ioctl_data*,int,int *) ;
 struct mii_ioctl_data* if_mii (struct ifreq*) ;
 struct ftmac100* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ftmac100_do_ioctl(struct net_device *netdev, struct ifreq *ifr, int cmd)
{
 struct ftmac100 *priv = netdev_priv(netdev);
 struct mii_ioctl_data *data = if_mii(ifr);

 return generic_mii_ioctl(&priv->mii, data, cmd, ((void*)0));
}
