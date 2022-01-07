
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_8__ {int requested_mode; } ;
struct i40e_link_status {int link_info; int an_info; } ;
struct TYPE_6__ {int media_type; struct i40e_link_status link_info; } ;
struct i40e_hw {TYPE_4__ fc; TYPE_2__ phy; } ;
struct i40e_pf {struct i40e_hw hw; } ;
struct i40e_netdev_priv {TYPE_1__* vsi; } ;
struct TYPE_7__ {int port; int autoneg; } ;
struct ethtool_link_ksettings {TYPE_3__ base; } ;
struct TYPE_5__ {struct i40e_pf* back; } ;


 int AUTONEG_DISABLE ;
 int AUTONEG_ENABLE ;
 int Asym_Pause ;
 int Autoneg ;
 int Backplane ;
 int FIBRE ;
 int I40E_AQ_AN_COMPLETED ;
 int I40E_AQ_LINK_UP ;
 int PORT_DA ;
 int PORT_FIBRE ;
 int PORT_NONE ;
 int PORT_OTHER ;
 int PORT_TP ;
 int Pause ;
 int TP ;
 int advertising ;
 int ethtool_link_ksettings_add_link_mode (struct ethtool_link_ksettings*,int ,int ) ;
 int ethtool_link_ksettings_del_link_mode (struct ethtool_link_ksettings*,int ,int ) ;
 int ethtool_link_ksettings_zero_link_mode (struct ethtool_link_ksettings*,int ) ;
 int i40e_get_settings_link_down (struct i40e_hw*,struct ethtool_link_ksettings*,struct i40e_pf*) ;
 int i40e_get_settings_link_up (struct i40e_hw*,struct ethtool_link_ksettings*,struct net_device*,struct i40e_pf*) ;
 struct i40e_netdev_priv* netdev_priv (struct net_device*) ;
 int supported ;

__attribute__((used)) static int i40e_get_link_ksettings(struct net_device *netdev,
       struct ethtool_link_ksettings *ks)
{
 struct i40e_netdev_priv *np = netdev_priv(netdev);
 struct i40e_pf *pf = np->vsi->back;
 struct i40e_hw *hw = &pf->hw;
 struct i40e_link_status *hw_link_info = &hw->phy.link_info;
 bool link_up = hw_link_info->link_info & I40E_AQ_LINK_UP;

 ethtool_link_ksettings_zero_link_mode(ks, supported);
 ethtool_link_ksettings_zero_link_mode(ks, advertising);

 if (link_up)
  i40e_get_settings_link_up(hw, ks, netdev, pf);
 else
  i40e_get_settings_link_down(hw, ks, pf);



 ks->base.autoneg = ((hw_link_info->an_info & I40E_AQ_AN_COMPLETED) ?
       AUTONEG_ENABLE : AUTONEG_DISABLE);


 switch (hw->phy.media_type) {
 case 133:
  ethtool_link_ksettings_add_link_mode(ks, supported, Autoneg);
  ethtool_link_ksettings_add_link_mode(ks, supported, Backplane);
  ethtool_link_ksettings_add_link_mode(ks, advertising, Autoneg);
  ethtool_link_ksettings_add_link_mode(ks, advertising,
           Backplane);
  ks->base.port = PORT_NONE;
  break;
 case 132:
  ethtool_link_ksettings_add_link_mode(ks, supported, TP);
  ethtool_link_ksettings_add_link_mode(ks, advertising, TP);
  ks->base.port = PORT_TP;
  break;
 case 130:
 case 131:
  ethtool_link_ksettings_add_link_mode(ks, supported, FIBRE);
  ethtool_link_ksettings_add_link_mode(ks, advertising, FIBRE);
  ks->base.port = PORT_DA;
  break;
 case 129:
  ethtool_link_ksettings_add_link_mode(ks, supported, FIBRE);
  ethtool_link_ksettings_add_link_mode(ks, advertising, FIBRE);
  ks->base.port = PORT_FIBRE;
  break;
 case 128:
 default:
  ks->base.port = PORT_OTHER;
  break;
 }


 ethtool_link_ksettings_add_link_mode(ks, supported, Pause);

 switch (hw->fc.requested_mode) {
 case 136:
  ethtool_link_ksettings_add_link_mode(ks, advertising, Pause);
  break;
 case 134:
  ethtool_link_ksettings_add_link_mode(ks, advertising,
           Asym_Pause);
  break;
 case 135:
  ethtool_link_ksettings_add_link_mode(ks, advertising, Pause);
  ethtool_link_ksettings_add_link_mode(ks, advertising,
           Asym_Pause);
  break;
 default:
  ethtool_link_ksettings_del_link_mode(ks, advertising, Pause);
  ethtool_link_ksettings_del_link_mode(ks, advertising,
           Asym_Pause);
  break;
 }

 return 0;
}
