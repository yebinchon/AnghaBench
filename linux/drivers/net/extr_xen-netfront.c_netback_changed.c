
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {int const state; int dev; } ;
struct netfront_info {struct net_device* netdev; } ;
struct net_device {int dummy; } ;
typedef enum xenbus_state { ____Placeholder_xenbus_state } xenbus_state ;
 int dev_dbg (int *,char*,int ) ;
 struct netfront_info* dev_get_drvdata (int *) ;
 int module_wq ;
 int netdev_notify_peers (struct net_device*) ;
 int wake_up_all (int *) ;
 int xenbus_frontend_closed (struct xenbus_device*) ;
 int xenbus_strstate (int) ;
 int xenbus_switch_state (struct xenbus_device*,int) ;
 int xennet_connect (struct net_device*) ;

__attribute__((used)) static void netback_changed(struct xenbus_device *dev,
       enum xenbus_state backend_state)
{
 struct netfront_info *np = dev_get_drvdata(&dev->dev);
 struct net_device *netdev = np->netdev;

 dev_dbg(&dev->dev, "%s\n", xenbus_strstate(backend_state));

 wake_up_all(&module_wq);

 switch (backend_state) {
 case 131:
 case 132:
 case 129:
 case 130:
 case 128:
  break;

 case 133:
  if (dev->state != 131)
   break;
  if (xennet_connect(netdev) != 0)
   break;
  xenbus_switch_state(dev, 134);
  break;

 case 134:
  netdev_notify_peers(netdev);
  break;

 case 136:
  if (dev->state == 136)
   break;

 case 135:
  xenbus_frontend_closed(dev);
  break;
 }
}
