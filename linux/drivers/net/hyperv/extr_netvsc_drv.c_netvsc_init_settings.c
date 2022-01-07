
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_context {int duplex; int speed; int l4_hash; } ;
struct net_device {int features; } ;


 int DUPLEX_FULL ;
 int HV_DEFAULT_L4HASH ;
 int NETIF_F_LRO ;
 int SPEED_UNKNOWN ;
 struct net_device_context* netdev_priv (struct net_device*) ;

__attribute__((used)) static void netvsc_init_settings(struct net_device *dev)
{
 struct net_device_context *ndc = netdev_priv(dev);

 ndc->l4_hash = HV_DEFAULT_L4HASH;

 ndc->speed = SPEED_UNKNOWN;
 ndc->duplex = DUPLEX_FULL;

 dev->features = NETIF_F_LRO;
}
