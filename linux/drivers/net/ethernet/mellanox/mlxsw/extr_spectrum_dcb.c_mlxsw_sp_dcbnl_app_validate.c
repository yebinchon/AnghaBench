
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct dcb_app {scalar_t__ priority; int selector; int protocol; } ;


 int EINVAL ;


 scalar_t__ IEEE_8021QAZ_MAX_TCS ;
 int dcb_ieee_getapp_mask (struct net_device*,struct dcb_app*) ;
 int fls (int ) ;
 int netdev_err (struct net_device*,char*,...) ;
 int netdev_warn (struct net_device*,char*,int,scalar_t__,int) ;

__attribute__((used)) static int mlxsw_sp_dcbnl_app_validate(struct net_device *dev,
           struct dcb_app *app)
{
 int prio;

 if (app->priority >= IEEE_8021QAZ_MAX_TCS) {
  netdev_err(dev, "APP entry with priority value %u is invalid\n",
      app->priority);
  return -EINVAL;
 }

 switch (app->selector) {
 case 129:
  if (app->protocol >= 64) {
   netdev_err(dev, "DSCP APP entry with protocol value %u is invalid\n",
       app->protocol);
   return -EINVAL;
  }


  prio = fls(dcb_ieee_getapp_mask(dev, app));
  if (prio--) {
   if (prio < app->priority)
    netdev_warn(dev, "Choosing priority %d for DSCP %d in favor of previously-active value of %d\n",
         app->priority, app->protocol, prio);
   else if (prio > app->priority)
    netdev_warn(dev, "Ignoring new priority %d for DSCP %d in favor of current value of %d\n",
         app->priority, app->protocol, prio);
  }
  break;

 case 128:
  if (app->protocol) {
   netdev_err(dev, "EtherType APP entries with protocol value != 0 not supported\n");
   return -EINVAL;
  }
  break;

 default:
  netdev_err(dev, "APP entries with selector %u not supported\n",
      app->selector);
  return -EINVAL;
 }

 return 0;
}
