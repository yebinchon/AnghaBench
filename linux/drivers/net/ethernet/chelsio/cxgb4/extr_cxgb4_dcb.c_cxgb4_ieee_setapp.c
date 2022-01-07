
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct dcb_app {scalar_t__ selector; int priority; scalar_t__ protocol; } ;


 int CXGB4_DCB_FW_APP_ID ;
 int EINVAL ;
 scalar_t__ IEEE_8021QAZ_APP_SEL_ANY ;
 scalar_t__ IEEE_8021QAZ_APP_SEL_ETHERTYPE ;
 int __cxgb4_setapp (struct net_device*,scalar_t__,scalar_t__,int) ;
 int cxgb4_ieee_negotiation_complete (struct net_device*,int ) ;
 int dcb_ieee_setapp (struct net_device*,struct dcb_app*) ;

__attribute__((used)) static int cxgb4_ieee_setapp(struct net_device *dev, struct dcb_app *app)
{
 int ret;

 if (!cxgb4_ieee_negotiation_complete(dev, CXGB4_DCB_FW_APP_ID))
  return -EINVAL;
 if (!(app->selector && app->protocol))
  return -EINVAL;

 if (!(app->selector > IEEE_8021QAZ_APP_SEL_ETHERTYPE &&
       app->selector < IEEE_8021QAZ_APP_SEL_ANY))
  return -EINVAL;


 ret = __cxgb4_setapp(dev, app->selector - 1, app->protocol,
        (1 << app->priority));
 if (ret)
  return ret;

 return dcb_ieee_setapp(dev, app);
}
