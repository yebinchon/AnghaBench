
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {scalar_t__ state; int enabled; } ;
struct port_info {TYPE_1__ dcb; } ;
struct net_device {int dummy; } ;


 scalar_t__ CXGB4_DCB_STATE_FW_ALLSYNCED ;
 scalar_t__ CXGB4_DCB_STATE_HOST ;
 struct port_info* netdev2pinfo (struct net_device*) ;

__attribute__((used)) static u8 cxgb4_setstate(struct net_device *dev, u8 enabled)
{
 struct port_info *pi = netdev2pinfo(dev);


 if (pi->dcb.state == CXGB4_DCB_STATE_HOST) {
  pi->dcb.enabled = enabled;
  return 0;
 }



 if (enabled != (pi->dcb.state == CXGB4_DCB_STATE_FW_ALLSYNCED))
  return 1;

 return 0;
}
