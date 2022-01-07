
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_trans {int dummy; } ;
struct firmware {int size; int data; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int enable_ini; } ;


 int iwl_dbg_tlv_parse_bin (struct iwl_trans*,int ,int ) ;
 TYPE_1__ iwlwifi_mod_params ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char*,struct device*) ;

void iwl_dbg_tlv_load_bin(struct device *dev, struct iwl_trans *trans)
{
 const struct firmware *fw;
 int res;

 if (!iwlwifi_mod_params.enable_ini)
  return;

 res = request_firmware(&fw, "iwl-dbg-tlv.ini", dev);
 if (res)
  return;

 iwl_dbg_tlv_parse_bin(trans, fw->data, fw->size);

 release_firmware(fw);
}
