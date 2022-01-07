
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sonic_local {int msg_enable; } ;
struct net_device {int dummy; } ;


 int drv ;
 struct sonic_local* netdev_priv (struct net_device*) ;
 int netif_dbg (struct sonic_local*,int ,struct net_device*,char*,int ) ;
 int netif_msg_init (int ,int ) ;
 int sonic_debug ;
 int version ;
 int version_printed ;

__attribute__((used)) static void sonic_msg_init(struct net_device *dev)
{
 struct sonic_local *lp = netdev_priv(dev);

 lp->msg_enable = netif_msg_init(sonic_debug, 0);

 if (version_printed++ == 0)
  netif_dbg(lp, drv, dev, "%s", version);
}
