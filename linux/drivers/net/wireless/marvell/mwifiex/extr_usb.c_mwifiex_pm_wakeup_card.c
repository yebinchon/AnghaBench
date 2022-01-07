
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwifiex_adapter {int pm_wakeup_fw_try; int pm_wakeup_card_req; int ps_state; int wakeup_timer; } ;


 int PS_STATE_AWAKE ;
 int del_timer (int *) ;

__attribute__((used)) static int mwifiex_pm_wakeup_card(struct mwifiex_adapter *adapter)
{

 adapter->pm_wakeup_fw_try = 0;
 del_timer(&adapter->wakeup_timer);
 adapter->pm_wakeup_card_req = 0;
 adapter->ps_state = PS_STATE_AWAKE;

 return 0;
}
