
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ath_hw {int dummy; } ;
struct ath_common {int const* macaddr; int const* bssidmask; } ;


 int ETH_ALEN ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;

__attribute__((used)) static inline bool ath_dynack_bssidmask(struct ath_hw *ah, const u8 *mac)
{
 int i;
 struct ath_common *common = ath9k_hw_common(ah);

 for (i = 0; i < ETH_ALEN; i++) {
  if ((common->macaddr[i] & common->bssidmask[i]) !=
      (mac[i] & common->bssidmask[i]))
   return 0;
 }

 return 1;
}
