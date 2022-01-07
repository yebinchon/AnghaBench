
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath5k_hw {int dummy; } ;
typedef int s32 ;


 int AR5K_PHY_NF ;
 int AR5K_PHY_NF_MINCCA_PWR ;
 int AR5K_REG_MS (int ,int ) ;
 int ath5k_hw_reg_read (struct ath5k_hw*,int ) ;
 int sign_extend32 (int ,int) ;

__attribute__((used)) static s32
ath5k_hw_read_measured_noise_floor(struct ath5k_hw *ah)
{
 s32 val;

 val = ath5k_hw_reg_read(ah, AR5K_PHY_NF);
 return sign_extend32(AR5K_REG_MS(val, AR5K_PHY_NF_MINCCA_PWR), 8);
}
