
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;
struct TYPE_2__ {int mdio; } ;
struct alx_priv {TYPE_1__ hw; } ;


 int EAGAIN ;
 int if_mii (struct ifreq*) ;
 int mdio_mii_ioctl (int *,int ,int) ;
 struct alx_priv* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;

__attribute__((used)) static int alx_ioctl(struct net_device *netdev, struct ifreq *ifr, int cmd)
{
 struct alx_priv *alx = netdev_priv(netdev);

 if (!netif_running(netdev))
  return -EAGAIN;

 return mdio_mii_ioctl(&alx->hw.mdio, if_mii(ifr), cmd);
}
