
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtnet_info {int duplex; int speed; } ;
struct net_device {int dummy; } ;


 int DUPLEX_UNKNOWN ;
 int SPEED_UNKNOWN ;
 struct virtnet_info* netdev_priv (struct net_device*) ;

__attribute__((used)) static void virtnet_init_settings(struct net_device *dev)
{
 struct virtnet_info *vi = netdev_priv(dev);

 vi->speed = SPEED_UNKNOWN;
 vi->duplex = DUPLEX_UNKNOWN;
}
