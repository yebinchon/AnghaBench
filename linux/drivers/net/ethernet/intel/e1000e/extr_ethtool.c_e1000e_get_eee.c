
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_10__ {int parent; } ;
struct net_device {TYPE_5__ dev; } ;
struct ethtool_eee {int eee_active; int eee_enabled; int tx_lpi_enabled; int tx_lpi_timer; void* lp_advertised; void* advertised; int supported; } ;
struct TYPE_8__ {int (* acquire ) (struct e1000_hw*) ;int (* release ) (struct e1000_hw*) ;} ;
struct TYPE_9__ {int type; TYPE_3__ ops; } ;
struct TYPE_6__ {int eee_disable; } ;
struct TYPE_7__ {TYPE_1__ ich8lan; } ;
struct e1000_hw {TYPE_4__ phy; TYPE_2__ dev_spec; } ;
struct e1000_adapter {int flags2; int eee_advert; struct e1000_hw hw; } ;


 int E1000_EEE_RX_LPI_RCVD ;
 int E1000_EEE_TX_LPI_RCVD ;
 int E1000_LPIC_LPIET_SHIFT ;
 int EBUSY ;
 int ENODATA ;
 int EOPNOTSUPP ;
 int FLAG2_HAS_EEE ;
 int I217_EEE_CAPABILITY ;
 int I217_EEE_LP_ABILITY ;
 int I217_EEE_PCS_STATUS ;
 int I82579_EEE_CAPABILITY ;
 int I82579_EEE_LP_ABILITY ;
 int I82579_EEE_PCS_STATUS ;
 int LPIC ;


 int e1000_read_emi_reg_locked (struct e1000_hw*,int,int*) ;
 int er32 (int ) ;
 void* mmd_eee_adv_to_ethtool_adv_t (int) ;
 int mmd_eee_cap_to_ethtool_sup_t (int) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_sync (int ) ;
 int stub1 (struct e1000_hw*) ;
 int stub2 (struct e1000_hw*) ;

__attribute__((used)) static int e1000e_get_eee(struct net_device *netdev, struct ethtool_eee *edata)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;
 u16 cap_addr, lpa_addr, pcs_stat_addr, phy_data;
 u32 ret_val;

 if (!(adapter->flags2 & FLAG2_HAS_EEE))
  return -EOPNOTSUPP;

 switch (hw->phy.type) {
 case 129:
  cap_addr = I82579_EEE_CAPABILITY;
  lpa_addr = I82579_EEE_LP_ABILITY;
  pcs_stat_addr = I82579_EEE_PCS_STATUS;
  break;
 case 128:
  cap_addr = I217_EEE_CAPABILITY;
  lpa_addr = I217_EEE_LP_ABILITY;
  pcs_stat_addr = I217_EEE_PCS_STATUS;
  break;
 default:
  return -EOPNOTSUPP;
 }

 pm_runtime_get_sync(netdev->dev.parent);

 ret_val = hw->phy.ops.acquire(hw);
 if (ret_val) {
  pm_runtime_put_sync(netdev->dev.parent);
  return -EBUSY;
 }


 ret_val = e1000_read_emi_reg_locked(hw, cap_addr, &phy_data);
 if (ret_val)
  goto release;
 edata->supported = mmd_eee_cap_to_ethtool_sup_t(phy_data);


 edata->advertised = mmd_eee_adv_to_ethtool_adv_t(adapter->eee_advert);


 ret_val = e1000_read_emi_reg_locked(hw, lpa_addr, &phy_data);
 if (ret_val)
  goto release;
 edata->lp_advertised = mmd_eee_adv_to_ethtool_adv_t(phy_data);


 ret_val = e1000_read_emi_reg_locked(hw, pcs_stat_addr, &phy_data);
 if (ret_val)
  goto release;
 if (hw->phy.type == 129)
  phy_data <<= 8;





 if (phy_data & (E1000_EEE_TX_LPI_RCVD | E1000_EEE_RX_LPI_RCVD))
  edata->eee_active = 1;

 edata->eee_enabled = !hw->dev_spec.ich8lan.eee_disable;
 edata->tx_lpi_enabled = 1;
 edata->tx_lpi_timer = er32(LPIC) >> E1000_LPIC_LPIET_SHIFT;

release:
 hw->phy.ops.release(hw);
 if (ret_val)
  ret_val = -ENODATA;

 pm_runtime_put_sync(netdev->dev.parent);

 return ret_val;
}
