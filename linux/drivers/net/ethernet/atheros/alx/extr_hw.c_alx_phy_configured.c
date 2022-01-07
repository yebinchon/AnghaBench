
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct alx_hw {int adv_cfg; } ;


 int ALX_DRV_PHY ;
 scalar_t__ ALX_DRV_PHY_UNKNOWN ;
 scalar_t__ ALX_GET_FIELD (scalar_t__,int ) ;
 scalar_t__ alx_get_phy_config (struct alx_hw*) ;
 scalar_t__ ethadv_to_hw_cfg (struct alx_hw*,int ) ;

bool alx_phy_configured(struct alx_hw *hw)
{
 u32 cfg, hw_cfg;

 cfg = ethadv_to_hw_cfg(hw, hw->adv_cfg);
 cfg = ALX_GET_FIELD(cfg, ALX_DRV_PHY);
 hw_cfg = alx_get_phy_config(hw);

 if (hw_cfg == ALX_DRV_PHY_UNKNOWN)
  return 0;

 return cfg == hw_cfg;
}
