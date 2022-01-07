
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ei_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ txing; } ;


 TYPE_1__ ei_status ;
 int hw ;
 struct ei_device* netdev_priv (struct net_device*) ;
 int netif_info (struct ei_device*,int ,struct net_device*,char*) ;

__attribute__((used)) static void mac8390_no_reset(struct net_device *dev)
{
 struct ei_device *ei_local = netdev_priv(dev);

 ei_status.txing = 0;
 netif_info(ei_local, hw, dev, "reset not supported\n");
}
