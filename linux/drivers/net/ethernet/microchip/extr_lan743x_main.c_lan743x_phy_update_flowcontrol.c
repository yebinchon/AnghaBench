
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct lan743x_phy {int fc_request_control; scalar_t__ fc_autoneg; } ;
struct lan743x_adapter {struct lan743x_phy phy; } ;


 int FLOW_CTRL_RX ;
 int FLOW_CTRL_TX ;
 int lan743x_mac_flow_ctrl_set_enables (struct lan743x_adapter*,int,int) ;
 int mii_resolve_flowctrl_fdx (int ,int ) ;

__attribute__((used)) static void lan743x_phy_update_flowcontrol(struct lan743x_adapter *adapter,
        u8 duplex, u16 local_adv,
        u16 remote_adv)
{
 struct lan743x_phy *phy = &adapter->phy;
 u8 cap;

 if (phy->fc_autoneg)
  cap = mii_resolve_flowctrl_fdx(local_adv, remote_adv);
 else
  cap = phy->fc_request_control;

 lan743x_mac_flow_ctrl_set_enables(adapter,
       cap & FLOW_CTRL_TX,
       cap & FLOW_CTRL_RX);
}
