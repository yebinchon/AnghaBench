
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_char ;
struct net_device {size_t if_port; } ;
struct ifmap {size_t port; } ;


 int EINVAL ;
 int * if_names ;
 int netdev_info (struct net_device*,char*,int ) ;
 int tc589_set_xcvr (struct net_device*,size_t) ;

__attribute__((used)) static int el3_config(struct net_device *dev, struct ifmap *map)
{
 if ((map->port != (u_char)(-1)) && (map->port != dev->if_port)) {
  if (map->port <= 3) {
   dev->if_port = map->port;
   netdev_info(dev, "switched to %s port\n", if_names[dev->if_port]);
   tc589_set_xcvr(dev, dev->if_port);
  } else {
   return -EINVAL;
  }
 }
 return 0;
}
