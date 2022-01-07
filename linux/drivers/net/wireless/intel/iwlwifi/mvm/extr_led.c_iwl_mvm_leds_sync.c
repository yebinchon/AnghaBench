
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ brightness; } ;
struct iwl_mvm {int init_status; TYPE_3__ led; TYPE_2__* trans; } ;
struct TYPE_5__ {TYPE_1__* trans_cfg; } ;
struct TYPE_4__ {scalar_t__ device_family; } ;


 scalar_t__ IWL_DEVICE_FAMILY_8000 ;
 int IWL_MVM_INIT_STATUS_LEDS_INIT_COMPLETE ;
 int iwl_mvm_led_set (struct iwl_mvm*,int) ;

void iwl_mvm_leds_sync(struct iwl_mvm *mvm)
{
 if (!(mvm->init_status & IWL_MVM_INIT_STATUS_LEDS_INIT_COMPLETE))
  return;





 if (mvm->trans->trans_cfg->device_family < IWL_DEVICE_FAMILY_8000)
  return;

 iwl_mvm_led_set(mvm, mvm->led.brightness > 0);
}
