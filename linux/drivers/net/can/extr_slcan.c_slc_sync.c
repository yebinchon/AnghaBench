
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slcan {scalar_t__ tty; } ;
struct net_device {int flags; } ;


 int IFF_UP ;
 int dev_close (struct net_device*) ;
 int maxdev ;
 struct slcan* netdev_priv (struct net_device*) ;
 struct net_device** slcan_devs ;

__attribute__((used)) static void slc_sync(void)
{
 int i;
 struct net_device *dev;
 struct slcan *sl;

 for (i = 0; i < maxdev; i++) {
  dev = slcan_devs[i];
  if (dev == ((void*)0))
   break;

  sl = netdev_priv(dev);
  if (sl->tty)
   continue;
  if (dev->flags & IFF_UP)
   dev_close(dev);
 }
}
