
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {int flags; } ;
struct TYPE_5__ {int a_promiscuous_mode; } ;
struct TYPE_6__ {TYPE_1__ b5; } ;
struct TYPE_7__ {scalar_t__ num_multi; TYPE_2__ sparm; } ;
typedef TYPE_3__ ray_dev_t ;
typedef int promisc ;
typedef int UCHAR ;


 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int OBJID_promiscuous_mode ;
 scalar_t__ netdev_mc_count (struct net_device*) ;
 TYPE_3__* netdev_priv (struct net_device*) ;
 int pr_debug (char*,...) ;
 int ray_update_multi_list (struct net_device*,int) ;
 int ray_update_parm (struct net_device*,int ,int*,int) ;

__attribute__((used)) static void set_multicast_list(struct net_device *dev)
{
 ray_dev_t *local = netdev_priv(dev);
 UCHAR promisc;

 pr_debug("ray_cs set_multicast_list(%p)\n", dev);

 if (dev->flags & IFF_PROMISC) {
  if (local->sparm.b5.a_promiscuous_mode == 0) {
   pr_debug("ray_cs set_multicast_list promisc on\n");
   local->sparm.b5.a_promiscuous_mode = 1;
   promisc = 1;
   ray_update_parm(dev, OBJID_promiscuous_mode,
     &promisc, sizeof(promisc));
  }
 } else {
  if (local->sparm.b5.a_promiscuous_mode == 1) {
   pr_debug("ray_cs set_multicast_list promisc off\n");
   local->sparm.b5.a_promiscuous_mode = 0;
   promisc = 0;
   ray_update_parm(dev, OBJID_promiscuous_mode,
     &promisc, sizeof(promisc));
  }
 }

 if (dev->flags & IFF_ALLMULTI)
  ray_update_multi_list(dev, 1);
 else {
  if (local->num_multi != netdev_mc_count(dev))
   ray_update_multi_list(dev, 0);
 }
}
