
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int supported; int state; } ;
struct port_info {TYPE_1__ dcb; } ;
struct net_device {int dummy; } ;


 int CXGB4_DCBX_FW_SUPPORT ;
 int CXGB4_DCBX_HOST_SUPPORT ;
 int cxgb4_dcb_state_synced (int ) ;
 struct port_info* netdev2pinfo (struct net_device*) ;

__attribute__((used)) static u8 cxgb4_setdcbx(struct net_device *dev, u8 dcb_request)
{
 struct port_info *pi = netdev2pinfo(dev);



 if ((dcb_request & (CXGB4_DCBX_FW_SUPPORT | CXGB4_DCBX_HOST_SUPPORT))
     != dcb_request)
  return 1;



 if (!cxgb4_dcb_state_synced(pi->dcb.state))
  return 1;






 if (dcb_request != pi->dcb.supported)
  return 1;

 pi->dcb.supported = dcb_request;
 return 0;
}
