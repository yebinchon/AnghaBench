
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct alx_hw {int dummy; } ;


 int ALX_MII_ISR ;
 int alx_read_phy_reg (struct alx_hw*,int ,int *) ;

int alx_clear_phy_intr(struct alx_hw *hw)
{
 u16 isr;


 return alx_read_phy_reg(hw, ALX_MII_ISR, &isr);
}
