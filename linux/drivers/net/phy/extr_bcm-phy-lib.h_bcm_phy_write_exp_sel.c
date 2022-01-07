
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct phy_device {int dummy; } ;


 int MII_BCM54XX_EXP_SEL_ER ;
 int bcm_phy_write_exp (struct phy_device*,int,int) ;

__attribute__((used)) static inline int bcm_phy_write_exp_sel(struct phy_device *phydev,
     u16 reg, u16 val)
{
 return bcm_phy_write_exp(phydev, reg | MII_BCM54XX_EXP_SEL_ER, val);
}
