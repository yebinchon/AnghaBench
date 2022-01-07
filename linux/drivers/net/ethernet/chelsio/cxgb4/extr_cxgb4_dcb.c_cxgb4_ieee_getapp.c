
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct dcb_app {scalar_t__ priority; scalar_t__ protocol; scalar_t__ selector; } ;


 int CXGB4_DCB_FW_APP_ID ;
 int EINVAL ;
 int __cxgb4_getapp (struct net_device*,scalar_t__,scalar_t__,int ) ;
 int cxgb4_ieee_negotiation_complete (struct net_device*,int ) ;
 int dcb_ieee_getapp_mask (struct net_device*,struct dcb_app*) ;
 scalar_t__ ffs (int) ;

__attribute__((used)) static int cxgb4_ieee_getapp(struct net_device *dev, struct dcb_app *app)
{
 int prio;

 if (!cxgb4_ieee_negotiation_complete(dev, CXGB4_DCB_FW_APP_ID))
  return -EINVAL;
 if (!(app->selector && app->protocol))
  return -EINVAL;


 prio = __cxgb4_getapp(dev, app->selector - 1, app->protocol, 0);

 if (prio < 0)
  prio = dcb_ieee_getapp_mask(dev, app);

 app->priority = ffs(prio) - 1;
 return 0;
}
