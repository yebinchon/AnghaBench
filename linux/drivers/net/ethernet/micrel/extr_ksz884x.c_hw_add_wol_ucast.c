
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ksz_hw {int override_addr; } ;


 int ETH_ALEN ;
 int hw_set_wol_frame (struct ksz_hw*,int ,int,int const*,int ,int ) ;

__attribute__((used)) static void hw_add_wol_ucast(struct ksz_hw *hw)
{
 static const u8 mask[] = { 0x3F };

 hw_set_wol_frame(hw, 0, 1, mask, ETH_ALEN, hw->override_addr);
}
