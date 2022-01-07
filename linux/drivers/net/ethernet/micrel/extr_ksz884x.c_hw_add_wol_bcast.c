
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ksz_hw {int dummy; } ;


 int ETH_ALEN ;
 int hw_set_wol_frame (struct ksz_hw*,int,int,int const*,int ,int const*) ;

__attribute__((used)) static void hw_add_wol_bcast(struct ksz_hw *hw)
{
 static const u8 mask[] = { 0x3F };
 static const u8 pattern[] = { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF };

 hw_set_wol_frame(hw, 2, 1, mask, ETH_ALEN, pattern);
}
