
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct ath_hw {void** tx_power; } ;


 size_t ALL_TARGET_LEGACY_11L ;
 size_t ALL_TARGET_LEGACY_11S ;
 size_t ALL_TARGET_LEGACY_1L_5L ;
 size_t ALL_TARGET_LEGACY_5S ;
 void* min (void*,void*) ;

__attribute__((used)) static void ar9003_hw_init_txpower_cck(struct ath_hw *ah, u8 *rate_array)
{
 ah->tx_power[0] = rate_array[ALL_TARGET_LEGACY_1L_5L];
 ah->tx_power[1] = rate_array[ALL_TARGET_LEGACY_1L_5L];
 ah->tx_power[2] = min(rate_array[ALL_TARGET_LEGACY_1L_5L],
         rate_array[ALL_TARGET_LEGACY_5S]);
 ah->tx_power[3] = min(rate_array[ALL_TARGET_LEGACY_11L],
         rate_array[ALL_TARGET_LEGACY_11S]);
}
