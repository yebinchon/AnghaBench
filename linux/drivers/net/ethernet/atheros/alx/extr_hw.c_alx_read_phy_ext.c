
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct alx_hw {int mdio_lock; } ;


 int __alx_read_phy_ext (struct alx_hw*,int ,int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int alx_read_phy_ext(struct alx_hw *hw, u8 dev, u16 reg, u16 *pdata)
{
 int err;

 spin_lock(&hw->mdio_lock);
 err = __alx_read_phy_ext(hw, dev, reg, pdata);
 spin_unlock(&hw->mdio_lock);

 return err;
}
