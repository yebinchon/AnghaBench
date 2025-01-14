
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct isp_csiphy {TYPE_1__* isp; } ;
typedef enum isp_interface_type { ____Placeholder_isp_interface_type } isp_interface_type ;
struct TYPE_2__ {scalar_t__ phy_type; } ;


 scalar_t__ ISP_PHY_TYPE_3430 ;
 scalar_t__ ISP_PHY_TYPE_3630 ;
 void csiphy_routing_cfg_3430 (struct isp_csiphy*,int,int,int) ;
 void csiphy_routing_cfg_3630 (struct isp_csiphy*,int,int) ;

__attribute__((used)) static void csiphy_routing_cfg(struct isp_csiphy *phy,
          enum isp_interface_type iface, bool on,
          bool ccp2_strobe)
{
 if (phy->isp->phy_type == ISP_PHY_TYPE_3630 && on)
  return csiphy_routing_cfg_3630(phy, iface, ccp2_strobe);
 if (phy->isp->phy_type == ISP_PHY_TYPE_3430)
  return csiphy_routing_cfg_3430(phy, iface, on, ccp2_strobe);
}
