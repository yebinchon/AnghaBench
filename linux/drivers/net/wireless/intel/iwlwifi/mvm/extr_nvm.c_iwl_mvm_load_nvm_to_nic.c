
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_nvm_section {int length; int data; } ;
struct iwl_mvm {struct iwl_nvm_section* nvm_sections; TYPE_1__* trans; } ;
struct TYPE_2__ {int dev; } ;


 int ARRAY_SIZE (struct iwl_nvm_section*) ;
 int IWL_DEBUG_EEPROM (int ,char*) ;
 int IWL_ERR (struct iwl_mvm*,char*,int) ;
 int iwl_nvm_write_section (struct iwl_mvm*,int,int ,int ) ;

int iwl_mvm_load_nvm_to_nic(struct iwl_mvm *mvm)
{
 int i, ret = 0;
 struct iwl_nvm_section *sections = mvm->nvm_sections;

 IWL_DEBUG_EEPROM(mvm->trans->dev, "'Write to NVM\n");

 for (i = 0; i < ARRAY_SIZE(mvm->nvm_sections); i++) {
  if (!mvm->nvm_sections[i].data || !mvm->nvm_sections[i].length)
   continue;
  ret = iwl_nvm_write_section(mvm, i, sections[i].data,
         sections[i].length);
  if (ret < 0) {
   IWL_ERR(mvm, "iwl_mvm_send_cmd failed: %d\n", ret);
   break;
  }
 }
 return ret;
}
