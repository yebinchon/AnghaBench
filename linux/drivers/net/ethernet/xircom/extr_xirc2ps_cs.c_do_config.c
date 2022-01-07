
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int if_port; } ;
struct local_info {int probe_port; } ;
struct ifmap {int port; } ;


 int EINVAL ;
 int do_reset (struct net_device*,int) ;
 int * if_names ;
 int netdev_info (struct net_device*,char*,int ) ;
 struct local_info* netdev_priv (struct net_device*) ;
 int pr_debug (char*,struct net_device*) ;

__attribute__((used)) static int
do_config(struct net_device *dev, struct ifmap *map)
{
    struct local_info *local = netdev_priv(dev);

    pr_debug("do_config(%p)\n", dev);
    if (map->port != 255 && map->port != dev->if_port) {
 if (map->port > 4)
     return -EINVAL;
 if (!map->port) {
     local->probe_port = 1;
     dev->if_port = 1;
 } else {
     local->probe_port = 0;
     dev->if_port = map->port;
 }
 netdev_info(dev, "switching to %s port\n", if_names[dev->if_port]);
 do_reset(dev,1);
    }
    return 0;
}
