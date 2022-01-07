
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ath_common {int bssidmask; } ;
struct ath5k_hw {scalar_t__ ah_version; } ;


 scalar_t__ AR5K_AR5212 ;
 int ETH_ALEN ;
 struct ath_common* ath5k_hw_common (struct ath5k_hw*) ;
 int ath_hw_setbssidmask (struct ath_common*) ;
 int memcpy (int ,int const*,int ) ;

void
ath5k_hw_set_bssid_mask(struct ath5k_hw *ah, const u8 *mask)
{
 struct ath_common *common = ath5k_hw_common(ah);



 memcpy(common->bssidmask, mask, ETH_ALEN);
 if (ah->ah_version == AR5K_AR5212)
  ath_hw_setbssidmask(common);
}
