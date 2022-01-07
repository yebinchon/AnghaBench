
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct fec_enet_private {int rx_copybreak; } ;
struct ethtool_tunable {int id; } ;


 int EINVAL ;

 struct fec_enet_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int fec_enet_set_tunable(struct net_device *netdev,
    const struct ethtool_tunable *tuna,
    const void *data)
{
 struct fec_enet_private *fep = netdev_priv(netdev);
 int ret = 0;

 switch (tuna->id) {
 case 128:
  fep->rx_copybreak = *(u32 *)data;
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
