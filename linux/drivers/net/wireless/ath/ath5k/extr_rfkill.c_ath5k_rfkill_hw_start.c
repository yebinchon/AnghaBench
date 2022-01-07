
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ee_header; int ee_rfkill_pol; int ee_rfkill_pin; } ;
struct TYPE_5__ {TYPE_1__ cap_eeprom; } ;
struct TYPE_6__ {int toggleq; int polarity; int gpio; } ;
struct ath5k_hw {TYPE_2__ ah_capabilities; TYPE_3__ rf_kill; } ;


 scalar_t__ AR5K_EEPROM_HDR_RFKILL (int ) ;
 int ath5k_rfkill_disable (struct ath5k_hw*) ;
 int ath5k_rfkill_set_intr (struct ath5k_hw*,int) ;
 int ath5k_tasklet_rfkill_toggle ;
 int tasklet_init (int *,int ,unsigned long) ;

void
ath5k_rfkill_hw_start(struct ath5k_hw *ah)
{

 ah->rf_kill.gpio = ah->ah_capabilities.cap_eeprom.ee_rfkill_pin;
 ah->rf_kill.polarity = ah->ah_capabilities.cap_eeprom.ee_rfkill_pol;

 tasklet_init(&ah->rf_kill.toggleq, ath5k_tasklet_rfkill_toggle,
  (unsigned long)ah);

 ath5k_rfkill_disable(ah);


 if (AR5K_EEPROM_HDR_RFKILL(ah->ah_capabilities.cap_eeprom.ee_header))
  ath5k_rfkill_set_intr(ah, 1);
}
