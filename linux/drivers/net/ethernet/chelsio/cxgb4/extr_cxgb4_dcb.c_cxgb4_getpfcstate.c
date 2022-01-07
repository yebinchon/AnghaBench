
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {scalar_t__ pfcen; int state; } ;
struct port_info {TYPE_1__ dcb; } ;
struct net_device {int dummy; } ;


 int cxgb4_dcb_state_synced (int ) ;
 struct port_info* netdev2pinfo (struct net_device*) ;

__attribute__((used)) static u8 cxgb4_getpfcstate(struct net_device *dev)
{
 struct port_info *pi = netdev2pinfo(dev);

 if (!cxgb4_dcb_state_synced(pi->dcb.state))
  return 0;

 return pi->dcb.pfcen != 0;
}
