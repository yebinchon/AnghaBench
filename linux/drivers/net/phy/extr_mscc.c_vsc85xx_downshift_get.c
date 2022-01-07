
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct phy_device {int dummy; } ;


 int DOWNSHIFT_CNTL_MASK ;
 int DOWNSHIFT_CNTL_POS ;
 int DOWNSHIFT_DEV_DISABLE ;
 int DOWNSHIFT_EN ;
 int MSCC_PHY_ACTIPHY_CNTL ;
 int MSCC_PHY_PAGE_EXTENDED ;
 int phy_read_paged (struct phy_device*,int ,int ) ;

__attribute__((used)) static int vsc85xx_downshift_get(struct phy_device *phydev, u8 *count)
{
 int reg_val;

 reg_val = phy_read_paged(phydev, MSCC_PHY_PAGE_EXTENDED,
     MSCC_PHY_ACTIPHY_CNTL);
 if (reg_val < 0)
  return reg_val;

 reg_val &= DOWNSHIFT_CNTL_MASK;
 if (!(reg_val & DOWNSHIFT_EN))
  *count = DOWNSHIFT_DEV_DISABLE;
 else
  *count = ((reg_val & ~DOWNSHIFT_EN) >> DOWNSHIFT_CNTL_POS) + 2;

 return 0;
}
