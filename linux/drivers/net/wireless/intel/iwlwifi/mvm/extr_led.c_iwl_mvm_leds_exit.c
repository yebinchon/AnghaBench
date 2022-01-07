
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct iwl_mvm {int init_status; TYPE_1__ led; } ;


 int IWL_MVM_INIT_STATUS_LEDS_INIT_COMPLETE ;
 int kfree (int ) ;
 int led_classdev_unregister (TYPE_1__*) ;

void iwl_mvm_leds_exit(struct iwl_mvm *mvm)
{
 if (!(mvm->init_status & IWL_MVM_INIT_STATUS_LEDS_INIT_COMPLETE))
  return;

 led_classdev_unregister(&mvm->led);
 kfree(mvm->led.name);
 mvm->init_status &= ~IWL_MVM_INIT_STATUS_LEDS_INIT_COMPLETE;
}
