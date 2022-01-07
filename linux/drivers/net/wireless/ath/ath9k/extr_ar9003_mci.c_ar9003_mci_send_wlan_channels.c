
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath9k_hw_mci {int wlan_channels_update; } ;
struct TYPE_2__ {struct ath9k_hw_mci mci; } ;
struct ath_hw {TYPE_1__ btcoex_hw; } ;


 int ar9003_mci_send_coex_wlan_channels (struct ath_hw*,int) ;

void ar9003_mci_send_wlan_channels(struct ath_hw *ah)
{
 struct ath9k_hw_mci *mci = &ah->btcoex_hw.mci;

 mci->wlan_channels_update = 1;
 ar9003_mci_send_coex_wlan_channels(ah, 1);
}
