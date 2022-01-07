
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct ath5k_hw {scalar_t__ ah_version; } ;


 scalar_t__ AR5K_AR5210 ;
 int AR5K_CFG ;
 unsigned int AR5K_INIT_CFG ;
 int AR5K_RESET_CTL ;
 unsigned int AR5K_RESET_CTL_BASEBAND ;
 unsigned int AR5K_RESET_CTL_DMA ;
 unsigned int AR5K_RESET_CTL_MAC ;
 unsigned int AR5K_RESET_CTL_PCU ;
 unsigned int AR5K_RESET_CTL_PHY ;
 int AR5K_RXDP ;
 int ath5k_hw_reg_read (struct ath5k_hw*,int ) ;
 int ath5k_hw_reg_write (struct ath5k_hw*,unsigned int,int ) ;
 int ath5k_hw_register_timeout (struct ath5k_hw*,int ,unsigned int,unsigned int,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int
ath5k_hw_nic_reset(struct ath5k_hw *ah, u32 val)
{
 int ret;
 u32 mask = val ? val : ~0U;


 ath5k_hw_reg_read(ah, AR5K_RXDP);




 ath5k_hw_reg_write(ah, val, AR5K_RESET_CTL);


 usleep_range(15, 20);

 if (ah->ah_version == AR5K_AR5210) {
  val &= AR5K_RESET_CTL_PCU | AR5K_RESET_CTL_DMA
   | AR5K_RESET_CTL_MAC | AR5K_RESET_CTL_PHY;
  mask &= AR5K_RESET_CTL_PCU | AR5K_RESET_CTL_DMA
   | AR5K_RESET_CTL_MAC | AR5K_RESET_CTL_PHY;
 } else {
  val &= AR5K_RESET_CTL_PCU | AR5K_RESET_CTL_BASEBAND;
  mask &= AR5K_RESET_CTL_PCU | AR5K_RESET_CTL_BASEBAND;
 }

 ret = ath5k_hw_register_timeout(ah, AR5K_RESET_CTL, mask, val, 0);






 if ((val & AR5K_RESET_CTL_PCU) == 0)
  ath5k_hw_reg_write(ah, AR5K_INIT_CFG, AR5K_CFG);

 return ret;
}
