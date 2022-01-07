
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct fs_enet_private {int dev; } ;


 int dev_warn (int ,char*,int ) ;
 struct fs_enet_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ev_error(struct net_device *dev, u32 int_events)
{
 struct fs_enet_private *fep = netdev_priv(dev);

 dev_warn(fep->dev, "SCC ERROR(s) 0x%x\n", int_events);
}
