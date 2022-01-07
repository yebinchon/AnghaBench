
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int AT803X_DEBUG_REG_5 ;
 int AT803X_DEBUG_TX_CLK_DLY_EN ;
 int at803x_debug_reg_mask (struct phy_device*,int ,int ,int ) ;

__attribute__((used)) static int at803x_enable_tx_delay(struct phy_device *phydev)
{
 return at803x_debug_reg_mask(phydev, AT803X_DEBUG_REG_5, 0,
         AT803X_DEBUG_TX_CLK_DLY_EN);
}
