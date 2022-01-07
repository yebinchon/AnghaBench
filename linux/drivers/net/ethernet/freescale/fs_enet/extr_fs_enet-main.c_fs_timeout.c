
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct fs_enet_private {int timeout_work; } ;


 struct fs_enet_private* netdev_priv (struct net_device*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void fs_timeout(struct net_device *dev)
{
 struct fs_enet_private *fep = netdev_priv(dev);

 schedule_work(&fep->timeout_work);
}
