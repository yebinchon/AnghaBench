
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct alx_hw {int dummy; } ;


 int alx_write_phy_core (struct alx_hw*,int,int ,int ,int ) ;

__attribute__((used)) static int __alx_write_phy_ext(struct alx_hw *hw, u8 dev, u16 reg, u16 data)
{
 return alx_write_phy_core(hw, 1, dev, reg, data);
}
