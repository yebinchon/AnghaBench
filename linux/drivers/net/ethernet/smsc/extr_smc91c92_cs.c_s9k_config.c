
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct smc_private {int cfg; } ;
struct net_device {int if_port; } ;
struct ifmap {int port; } ;


 int CFG_MII_SELECT ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int * if_names ;
 int netdev_info (struct net_device*,char*,int ) ;
 struct smc_private* netdev_priv (struct net_device*) ;
 int smc_reset (struct net_device*) ;

__attribute__((used)) static int s9k_config(struct net_device *dev, struct ifmap *map)
{
    struct smc_private *smc = netdev_priv(dev);
    if ((map->port != (u_char)(-1)) && (map->port != dev->if_port)) {
 if (smc->cfg & CFG_MII_SELECT)
     return -EOPNOTSUPP;
 else if (map->port > 2)
     return -EINVAL;
 dev->if_port = map->port;
 netdev_info(dev, "switched to %s port\n", if_names[dev->if_port]);
 smc_reset(dev);
    }
    return 0;
}
