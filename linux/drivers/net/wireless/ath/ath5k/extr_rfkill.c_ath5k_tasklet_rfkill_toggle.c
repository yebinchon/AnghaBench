
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath5k_hw {TYPE_1__* hw; } ;
struct TYPE_2__ {int wiphy; } ;


 int ath5k_is_rfkill_set (struct ath5k_hw*) ;
 int wiphy_rfkill_set_hw_state (int ,int) ;

__attribute__((used)) static void
ath5k_tasklet_rfkill_toggle(unsigned long data)
{
 struct ath5k_hw *ah = (void *)data;
 bool blocked;

 blocked = ath5k_is_rfkill_set(ah);
 wiphy_rfkill_set_hw_state(ah->hw->wiphy, blocked);
}
