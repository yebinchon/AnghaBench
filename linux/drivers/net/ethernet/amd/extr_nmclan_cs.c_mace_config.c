
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct net_device {int if_port; } ;
struct ifmap {int port; } ;


 int EINVAL ;
 int * if_names ;
 int netdev_info (struct net_device*,char*,int ) ;

__attribute__((used)) static int mace_config(struct net_device *dev, struct ifmap *map)
{
  if ((map->port != (u_char)(-1)) && (map->port != dev->if_port)) {
    if (map->port <= 2) {
      dev->if_port = map->port;
      netdev_info(dev, "switched to %s port\n", if_names[dev->if_port]);
    } else
      return -EINVAL;
  }
  return 0;
}
