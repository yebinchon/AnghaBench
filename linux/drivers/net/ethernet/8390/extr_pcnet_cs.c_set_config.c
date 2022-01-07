
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct pcnet_dev {int flags; } ;
struct net_device {int if_port; } ;
struct ifmap {int port; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int HAS_MISC_REG ;
 int NS8390_init (struct net_device*,int) ;
 struct pcnet_dev* PRIV (struct net_device*) ;
 int * if_names ;
 int netdev_info (struct net_device*,char*,int ) ;

__attribute__((used)) static int set_config(struct net_device *dev, struct ifmap *map)
{
    struct pcnet_dev *info = PRIV(dev);
    if ((map->port != (u_char)(-1)) && (map->port != dev->if_port)) {
 if (!(info->flags & HAS_MISC_REG))
     return -EOPNOTSUPP;
 else if ((map->port < 1) || (map->port > 2))
     return -EINVAL;
 dev->if_port = map->port;
 netdev_info(dev, "switched to %s port\n", if_names[dev->if_port]);
 NS8390_init(dev, 1);
    }
    return 0;
}
