
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct platform_device {int dummy; } ;
struct anarion_gmac {int phy_intf_sel; } ;


 int GMAC_CONFIG_INTF_SEL_MASK ;
 int GMAC_RESET_CONTROL_REG ;
 int GMAC_SW_CONFIG_REG ;
 int gmac_read_reg (struct anarion_gmac*,int ) ;
 int gmac_write_reg (struct anarion_gmac*,int ,int) ;

__attribute__((used)) static int anarion_gmac_init(struct platform_device *pdev, void *priv)
{
 uint32_t sw_config;
 struct anarion_gmac *gmac = priv;


 gmac_write_reg(gmac, GMAC_RESET_CONTROL_REG, 1);

 sw_config = gmac_read_reg(gmac, GMAC_SW_CONFIG_REG);
 sw_config &= ~GMAC_CONFIG_INTF_SEL_MASK;
 sw_config |= (gmac->phy_intf_sel & GMAC_CONFIG_INTF_SEL_MASK);
 gmac_write_reg(gmac, GMAC_SW_CONFIG_REG, sw_config);

 gmac_write_reg(gmac, GMAC_RESET_CONTROL_REG, 0);

 return 0;
}
