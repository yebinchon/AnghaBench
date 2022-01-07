
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct alx_hw {int mdio_lock; } ;


 int __alx_write_phy_dbg (struct alx_hw*,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int alx_write_phy_dbg(struct alx_hw *hw, u16 reg, u16 data)
{
 int err;

 spin_lock(&hw->mdio_lock);
 err = __alx_write_phy_dbg(hw, reg, data);
 spin_unlock(&hw->mdio_lock);

 return err;
}
