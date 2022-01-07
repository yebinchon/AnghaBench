
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;
struct ieee80211_channel {scalar_t__ band; scalar_t__ hw_value; } ;
struct ath5k_hw {scalar_t__ ah_version; scalar_t__ ah_radio; scalar_t__ ah_bwmode; struct pci_dev* pdev; } ;


 scalar_t__ AR5K_AR5210 ;
 scalar_t__ AR5K_AR5211 ;
 scalar_t__ AR5K_AR5212 ;
 scalar_t__ AR5K_BWMODE_10MHZ ;
 scalar_t__ AR5K_BWMODE_40MHZ ;
 scalar_t__ AR5K_BWMODE_DEFAULT ;
 scalar_t__ AR5K_MODE_11B ;
 int AR5K_PHY_MODE ;
 int AR5K_PHY_MODE_FREQ_2GHZ ;
 int AR5K_PHY_MODE_FREQ_5GHZ ;
 int AR5K_PHY_MODE_HALF_RATE ;
 int AR5K_PHY_MODE_MOD_CCK ;
 int AR5K_PHY_MODE_MOD_DYN ;
 int AR5K_PHY_MODE_MOD_OFDM ;
 int AR5K_PHY_MODE_QUARTER_RATE ;
 int AR5K_PHY_MODE_RAD_RF5111 ;
 int AR5K_PHY_MODE_RAD_RF5112 ;
 int AR5K_PHY_PLL ;
 int AR5K_PHY_PLL_40MHZ ;
 int AR5K_PHY_PLL_40MHZ_5413 ;
 int AR5K_PHY_PLL_44MHZ ;
 int AR5K_PHY_PLL_HALF_RATE ;
 int AR5K_PHY_PLL_QUARTER_RATE ;
 int AR5K_PHY_PLL_RF5111 ;
 int AR5K_PHY_PLL_RF5112 ;
 int AR5K_PHY_TURBO ;
 int AR5K_PHY_TURBO_MODE ;
 int AR5K_PHY_TURBO_SHORT ;
 int AR5K_PM_AWAKE ;
 int AR5K_RESET_CTL_BASEBAND ;
 int AR5K_RESET_CTL_DMA ;
 int AR5K_RESET_CTL_MAC ;
 int AR5K_RESET_CTL_PCI ;
 int AR5K_RESET_CTL_PCU ;
 int AR5K_RESET_CTL_PHY ;
 scalar_t__ AR5K_RF2425 ;
 scalar_t__ AR5K_RF5112 ;
 scalar_t__ AR5K_RF5413 ;
 int ATH5K_ERR (struct ath5k_hw*,char*) ;
 scalar_t__ ATH_AHB ;
 int EINVAL ;
 int EIO ;
 scalar_t__ NL80211_BAND_2GHZ ;
 scalar_t__ NL80211_BAND_5GHZ ;
 scalar_t__ ath5k_get_bus_type (struct ath5k_hw*) ;
 int ath5k_hw_nic_reset (struct ath5k_hw*,int) ;
 int ath5k_hw_reg_read (struct ath5k_hw*,int ) ;
 int ath5k_hw_reg_write (struct ath5k_hw*,int,int ) ;
 int ath5k_hw_set_power_mode (struct ath5k_hw*,int ,int,int ) ;
 int ath5k_hw_wisoc_reset (struct ath5k_hw*,int) ;
 scalar_t__ pci_is_pcie (struct pci_dev*) ;
 int usleep_range (int,int) ;

int
ath5k_hw_nic_wakeup(struct ath5k_hw *ah, struct ieee80211_channel *channel)
{
 struct pci_dev *pdev = ah->pdev;
 u32 turbo, mode, clock, bus_flags;
 int ret;

 turbo = 0;
 mode = 0;
 clock = 0;

 if ((ath5k_get_bus_type(ah) != ATH_AHB) || channel) {

  ret = ath5k_hw_set_power_mode(ah, AR5K_PM_AWAKE, 1, 0);
  if (ret) {
   ATH5K_ERR(ah, "failed to wakeup the MAC Chip\n");
   return ret;
  }
 }
 bus_flags = (pdev && pci_is_pcie(pdev)) ? 0 : AR5K_RESET_CTL_PCI;

 if (ah->ah_version == AR5K_AR5210) {
  ret = ath5k_hw_nic_reset(ah, AR5K_RESET_CTL_PCU |
   AR5K_RESET_CTL_MAC | AR5K_RESET_CTL_DMA |
   AR5K_RESET_CTL_PHY | AR5K_RESET_CTL_PCI);
  usleep_range(2000, 2500);
 } else {
  if (ath5k_get_bus_type(ah) == ATH_AHB)
   ret = ath5k_hw_wisoc_reset(ah, AR5K_RESET_CTL_PCU |
    AR5K_RESET_CTL_BASEBAND);
  else
   ret = ath5k_hw_nic_reset(ah, AR5K_RESET_CTL_PCU |
    AR5K_RESET_CTL_BASEBAND | bus_flags);
 }

 if (ret) {
  ATH5K_ERR(ah, "failed to reset the MAC Chip\n");
  return -EIO;
 }


 ret = ath5k_hw_set_power_mode(ah, AR5K_PM_AWAKE, 1, 0);
 if (ret) {
  ATH5K_ERR(ah, "failed to resume the MAC Chip\n");
  return ret;
 }




 if (ath5k_get_bus_type(ah) == ATH_AHB)
  ret = ath5k_hw_wisoc_reset(ah, 0);
 else
  ret = ath5k_hw_nic_reset(ah, 0);

 if (ret) {
  ATH5K_ERR(ah, "failed to warm reset the MAC Chip\n");
  return -EIO;
 }



 if (!channel)
  return 0;

 if (ah->ah_version != AR5K_AR5210) {




  if (ah->ah_radio >= AR5K_RF5112) {
   mode = AR5K_PHY_MODE_RAD_RF5112;
   clock = AR5K_PHY_PLL_RF5112;
  } else {
   mode = AR5K_PHY_MODE_RAD_RF5111;
   clock = AR5K_PHY_PLL_RF5111;
  }

  if (channel->band == NL80211_BAND_2GHZ) {
   mode |= AR5K_PHY_MODE_FREQ_2GHZ;
   clock |= AR5K_PHY_PLL_44MHZ;

   if (channel->hw_value == AR5K_MODE_11B) {
    mode |= AR5K_PHY_MODE_MOD_CCK;
   } else {







    if (ah->ah_version == AR5K_AR5211)
     mode |= AR5K_PHY_MODE_MOD_OFDM;
    else
     mode |= AR5K_PHY_MODE_MOD_DYN;
   }
  } else if (channel->band == NL80211_BAND_5GHZ) {
   mode |= (AR5K_PHY_MODE_FREQ_5GHZ |
     AR5K_PHY_MODE_MOD_OFDM);


   if (ah->ah_radio == AR5K_RF5413)
    clock = AR5K_PHY_PLL_40MHZ_5413;
   else
    clock |= AR5K_PHY_PLL_40MHZ;
  } else {
   ATH5K_ERR(ah, "invalid radio frequency mode\n");
   return -EINVAL;
  }




  if (ah->ah_bwmode == AR5K_BWMODE_40MHZ) {
   turbo = AR5K_PHY_TURBO_MODE;
   if (ah->ah_radio != AR5K_RF2425)
    turbo |= AR5K_PHY_TURBO_SHORT;
  } else if (ah->ah_bwmode != AR5K_BWMODE_DEFAULT) {
   if (ah->ah_radio == AR5K_RF5413) {
    mode |= (ah->ah_bwmode == AR5K_BWMODE_10MHZ) ?
     AR5K_PHY_MODE_HALF_RATE :
     AR5K_PHY_MODE_QUARTER_RATE;
   } else if (ah->ah_version == AR5K_AR5212) {
    clock |= (ah->ah_bwmode == AR5K_BWMODE_10MHZ) ?
     AR5K_PHY_PLL_HALF_RATE :
     AR5K_PHY_PLL_QUARTER_RATE;
   }
  }

 } else {


  if (ah->ah_bwmode == AR5K_BWMODE_40MHZ)
   ath5k_hw_reg_write(ah, AR5K_PHY_TURBO_MODE,
     AR5K_PHY_TURBO);
 }

 if (ah->ah_version != AR5K_AR5210) {


  if (ath5k_hw_reg_read(ah, AR5K_PHY_PLL) != clock) {
   ath5k_hw_reg_write(ah, clock, AR5K_PHY_PLL);
   usleep_range(300, 350);
  }


  ath5k_hw_reg_write(ah, mode, AR5K_PHY_MODE);
  ath5k_hw_reg_write(ah, turbo, AR5K_PHY_TURBO);
 }

 return 0;
}
