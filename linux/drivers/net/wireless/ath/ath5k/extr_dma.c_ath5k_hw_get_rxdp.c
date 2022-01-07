
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath5k_hw {int dummy; } ;


 int AR5K_RXDP ;
 int ath5k_hw_reg_read (struct ath5k_hw*,int ) ;

u32
ath5k_hw_get_rxdp(struct ath5k_hw *ah)
{
 return ath5k_hw_reg_read(ah, AR5K_RXDP);
}
