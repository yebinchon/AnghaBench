
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct iwl_mvm {TYPE_3__* trans; } ;
struct TYPE_6__ {int dev; int hw_id; TYPE_2__* trans_cfg; } ;
struct TYPE_5__ {TYPE_1__* base_params; } ;
struct TYPE_4__ {int eeprom_size; } ;


 int ENOBUFS ;
 int IWL_DEBUG_EEPROM (int ,char*,int,...) ;
 int IWL_ERR (struct iwl_mvm*,char*) ;
 int IWL_NVM_DEFAULT_CHUNK_SIZE ;
 int iwl_nvm_fixups (int ,int,int *,int) ;
 int iwl_nvm_read_chunk (struct iwl_mvm*,int,int,int,int *) ;

__attribute__((used)) static int iwl_nvm_read_section(struct iwl_mvm *mvm, u16 section,
    u8 *data, u32 size_read)
{
 u16 length, offset = 0;
 int ret;


 length = IWL_NVM_DEFAULT_CHUNK_SIZE;

 ret = length;


 while (ret == length) {

  if ((size_read + offset + length) >
      mvm->trans->trans_cfg->base_params->eeprom_size) {
   IWL_ERR(mvm, "EEPROM size is too small for NVM\n");
   return -ENOBUFS;
  }

  ret = iwl_nvm_read_chunk(mvm, section, offset, length, data);
  if (ret < 0) {
   IWL_DEBUG_EEPROM(mvm->trans->dev,
      "Cannot read NVM from section %d offset %d, length %d\n",
      section, offset, length);
   return ret;
  }
  offset += ret;
 }

 iwl_nvm_fixups(mvm->trans->hw_id, section, data, offset);

 IWL_DEBUG_EEPROM(mvm->trans->dev,
    "NVM section %d read completed\n", section);
 return offset;
}
