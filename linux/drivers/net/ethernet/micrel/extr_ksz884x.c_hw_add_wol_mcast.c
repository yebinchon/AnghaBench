
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ksz_hw {int * override_addr; } ;


 int hw_set_wol_frame (struct ksz_hw*,int,int,int const*,int,int*) ;
 int memcpy (int*,int *,int) ;

__attribute__((used)) static void hw_add_wol_mcast(struct ksz_hw *hw)
{
 static const u8 mask[] = { 0x3F };
 u8 pattern[] = { 0x33, 0x33, 0xFF, 0x00, 0x00, 0x00 };

 memcpy(&pattern[3], &hw->override_addr[3], 3);
 hw_set_wol_frame(hw, 1, 1, mask, 6, pattern);
}
