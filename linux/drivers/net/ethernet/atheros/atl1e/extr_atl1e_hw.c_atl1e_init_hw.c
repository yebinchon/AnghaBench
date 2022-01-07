
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atl1e_hw {int dummy; } ;
typedef int s32 ;


 int AT_WRITE_REG (struct atl1e_hw*,int ,int ) ;
 int AT_WRITE_REG_ARRAY (struct atl1e_hw*,int ,int,int ) ;
 int REG_RX_HASH_TABLE ;
 int atl1e_init_pcie (struct atl1e_hw*) ;
 int atl1e_phy_init (struct atl1e_hw*) ;

int atl1e_init_hw(struct atl1e_hw *hw)
{
 s32 ret_val = 0;

 atl1e_init_pcie(hw);



 AT_WRITE_REG(hw, REG_RX_HASH_TABLE, 0);
 AT_WRITE_REG_ARRAY(hw, REG_RX_HASH_TABLE, 1, 0);

 ret_val = atl1e_phy_init(hw);

 return ret_val;
}
