
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct TYPE_24__ {int size; int * data; } ;
struct TYPE_22__ {int size; int * data; } ;
struct TYPE_21__ {int size; int * data; } ;
struct TYPE_20__ {int size; int * data; } ;
struct TYPE_19__ {int size; int * data; } ;
struct TYPE_18__ {int size; int * data; } ;
struct iwl_mvm {char const* nvm_file_name; TYPE_12__* nvm_data; TYPE_10__* trans; TYPE_11__* nvm_sections; TYPE_9__ nvm_hw_blob; TYPE_8__* cfg; TYPE_7__ nvm_reg_blob; TYPE_6__ nvm_phy_sku_blob; TYPE_5__ nvm_prod_blob; TYPE_4__ nvm_calib_blob; TYPE_3__ nvm_sw_blob; } ;
struct TYPE_23__ {char* default_nvm_file_C_step; int nvm_hw_section_num; } ;
struct TYPE_17__ {TYPE_1__* base_params; } ;
struct TYPE_16__ {int eeprom_size; } ;
struct TYPE_15__ {int nvm_version; } ;
struct TYPE_14__ {int length; int * data; } ;
struct TYPE_13__ {int dev; int hw_id; TYPE_2__* trans_cfg; } ;


 int EFAULT ;
 int EINVAL ;
 int ENODATA ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IWL_DEBUG_EEPROM (int ,char*,...) ;
 int IWL_ERR (struct iwl_mvm*,char*) ;
 int NVM_MAX_NUM_SECTIONS ;






 scalar_t__ WARN_ON_ONCE (int) ;
 int iwl_nvm_fixups (int ,int,int *,int) ;
 int iwl_nvm_read_section (struct iwl_mvm*,int,int *,scalar_t__) ;
 TYPE_12__* iwl_parse_nvm_sections (struct iwl_mvm*) ;
 int iwl_read_external_nvm (TYPE_10__*,char const*,TYPE_11__*) ;
 int kfree (int *) ;
 int * kmalloc (int ,int ) ;
 int * kmemdup (int *,int,int ) ;

int iwl_nvm_init(struct iwl_mvm *mvm)
{
 int ret, section;
 u32 size_read = 0;
 u8 *nvm_buffer, *temp;
 const char *nvm_file_C = mvm->cfg->default_nvm_file_C_step;

 if (WARN_ON_ONCE(mvm->cfg->nvm_hw_section_num >= NVM_MAX_NUM_SECTIONS))
  return -EINVAL;



 IWL_DEBUG_EEPROM(mvm->trans->dev, "Read from NVM\n");

 nvm_buffer = kmalloc(mvm->trans->trans_cfg->base_params->eeprom_size,
        GFP_KERNEL);
 if (!nvm_buffer)
  return -ENOMEM;
 for (section = 0; section < NVM_MAX_NUM_SECTIONS; section++) {

  ret = iwl_nvm_read_section(mvm, section, nvm_buffer,
        size_read);
  if (ret == -ENODATA) {
   ret = 0;
   continue;
  }
  if (ret < 0)
   break;
  size_read += ret;
  temp = kmemdup(nvm_buffer, ret, GFP_KERNEL);
  if (!temp) {
   ret = -ENOMEM;
   break;
  }

  iwl_nvm_fixups(mvm->trans->hw_id, section, temp, ret);

  mvm->nvm_sections[section].data = temp;
  mvm->nvm_sections[section].length = ret;
 }
 if (!size_read)
  IWL_ERR(mvm, "OTP is blank\n");
 kfree(nvm_buffer);


 if (mvm->nvm_file_name) {

  ret = iwl_read_external_nvm(mvm->trans, mvm->nvm_file_name,
         mvm->nvm_sections);
  if (ret) {
   mvm->nvm_file_name = nvm_file_C;

   if ((ret == -EFAULT || ret == -ENOENT) &&
       mvm->nvm_file_name) {

    ret = iwl_read_external_nvm(mvm->trans,
           mvm->nvm_file_name,
           mvm->nvm_sections);
    if (ret)
     return ret;
   } else {
    return ret;
   }
  }
 }


 mvm->nvm_data = iwl_parse_nvm_sections(mvm);
 if (!mvm->nvm_data)
  return -ENODATA;
 IWL_DEBUG_EEPROM(mvm->trans->dev, "nvm version = %x\n",
    mvm->nvm_data->nvm_version);

 return ret < 0 ? ret : 0;
}
