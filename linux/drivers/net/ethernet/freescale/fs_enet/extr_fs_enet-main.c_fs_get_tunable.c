
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct fs_platform_info {int rx_copybreak; } ;
struct fs_enet_private {struct fs_platform_info* fpi; } ;
struct ethtool_tunable {int id; } ;


 int EINVAL ;

 struct fs_enet_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int fs_get_tunable(struct net_device *dev,
     const struct ethtool_tunable *tuna, void *data)
{
 struct fs_enet_private *fep = netdev_priv(dev);
 struct fs_platform_info *fpi = fep->fpi;
 int ret = 0;

 switch (tuna->id) {
 case 128:
  *(u32 *)data = fpi->rx_copybreak;
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
