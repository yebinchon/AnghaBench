
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath5k_hw {int dummy; } ;


 int ath5k_hw_reg_write (struct ath5k_hw*,int ,int ) ;

__attribute__((used)) static void ath5k_iowrite32(void *hw_priv, u32 val, u32 reg_offset)
{
 struct ath5k_hw *ah = (struct ath5k_hw *) hw_priv;
 ath5k_hw_reg_write(ah, val, reg_offset);
}
