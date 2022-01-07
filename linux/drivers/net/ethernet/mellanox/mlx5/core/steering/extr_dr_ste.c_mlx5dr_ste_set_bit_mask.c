
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dr_hw_ste_format {int mask; } ;


 int DR_STE_SIZE_MASK ;
 int memcpy (int ,int *,int ) ;

void mlx5dr_ste_set_bit_mask(u8 *hw_ste_p, u8 *bit_mask)
{
 struct dr_hw_ste_format *hw_ste = (struct dr_hw_ste_format *)hw_ste_p;

 memcpy(hw_ste->mask, bit_mask, DR_STE_SIZE_MASK);
}
