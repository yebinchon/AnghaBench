
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int AT803X_DEBUG_REG_0 ;
 int AT803X_DEBUG_RX_CLK_DLY_EN ;
 int at803x_debug_reg_mask (struct phy_device*,int ,int ,int ) ;

__attribute__((used)) static int at803x_enable_rx_delay(struct phy_device *phydev)
{
 return at803x_debug_reg_mask(phydev, AT803X_DEBUG_REG_0, 0,
         AT803X_DEBUG_RX_CLK_DLY_EN);
}
