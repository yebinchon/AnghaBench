
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int gpio; } ;
struct ath5k_hw {TYPE_1__ rf_kill; } ;


 int ath5k_hw_get_gpio (struct ath5k_hw*,int ) ;
 int ath5k_hw_set_gpio_input (struct ath5k_hw*,int ) ;
 int ath5k_hw_set_gpio_intr (struct ath5k_hw*,int ,int) ;

__attribute__((used)) static inline void ath5k_rfkill_set_intr(struct ath5k_hw *ah, bool enable)
{
 u32 curval;

 ath5k_hw_set_gpio_input(ah, ah->rf_kill.gpio);
 curval = ath5k_hw_get_gpio(ah, ah->rf_kill.gpio);
 ath5k_hw_set_gpio_intr(ah, ah->rf_kill.gpio, enable ?
     !!curval : !curval);
}
