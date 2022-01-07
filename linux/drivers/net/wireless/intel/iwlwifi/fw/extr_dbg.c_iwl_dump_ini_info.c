
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct list_head {int dummy; } ;
struct TYPE_8__ {int type; int subtype; int lmac_major; int lmac_minor; int umac_major; int umac_minor; } ;
struct TYPE_10__ {int external_dbg_cfg_name; int internal_dbg_cfg_name; int img_name; TYPE_3__ fw_ver; } ;
struct iwl_fw_runtime {TYPE_5__ dump; TYPE_4__* fw; TYPE_2__* trans; } ;
struct iwl_fw_ini_trigger {int data; int num_regions; int trigger_id; } ;
struct iwl_fw_ini_dump_info {int region_ids; int regions_num; int external_dbg_cfg_name; void* external_dbg_cfg_name_len; int internal_dbg_cfg_name; void* internal_dbg_cfg_name_len; int img_name; void* img_name_len; int build_tag; void* build_tag_len; void* umac_minor; void* umac_major; void* lmac_minor; void* lmac_major; void* rf_id_type; void* rf_id_step; void* rf_id_dash; void* rf_id_flavor; void* hw_type; void* hw_step; void* ver_subtype; void* ver_type; void* is_external_cfg; int trigger_id; void* version; } ;
struct iwl_fw_ini_dump_entry {int size; int list; scalar_t__ data; } ;
struct iwl_fw_error_dump_data {scalar_t__ data; void* len; void* type; } ;
typedef int __le32 ;
struct TYPE_9__ {int human_readable; } ;
struct TYPE_6__ {int external_ini_cfg; } ;
struct TYPE_7__ {int hw_rf_id; int hw_rev; TYPE_1__ dbg; } ;


 int CSR_HW_REV_STEP (int ) ;
 int CSR_HW_REV_TYPE (int ) ;
 int CSR_HW_RFID_DASH (int ) ;
 int CSR_HW_RFID_FLAVOR (int ) ;
 int CSR_HW_RFID_STEP (int ) ;
 int CSR_HW_RFID_TYPE (int ) ;
 int GFP_KERNEL ;
 int IWL_INI_DUMP_INFO_TYPE ;
 int IWL_INI_DUMP_VER ;
 void* cpu_to_le32 (int) ;
 struct iwl_fw_ini_dump_entry* kmalloc (int,int ) ;
 int le32_to_cpu (int ) ;
 int list_add (int *,struct list_head*) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static u32 iwl_dump_ini_info(struct iwl_fw_runtime *fwrt,
        struct iwl_fw_ini_trigger *trigger,
        struct list_head *list)
{
 struct iwl_fw_ini_dump_entry *entry;
 struct iwl_fw_error_dump_data *tlv;
 struct iwl_fw_ini_dump_info *dump;
 u32 reg_ids_size = le32_to_cpu(trigger->num_regions) * sizeof(__le32);
 u32 size = sizeof(*tlv) + sizeof(*dump) + reg_ids_size;

 entry = kmalloc(sizeof(*entry) + size, GFP_KERNEL);
 if (!entry)
  return 0;

 entry->size = size;

 tlv = (void *)entry->data;
 tlv->type = cpu_to_le32(IWL_INI_DUMP_INFO_TYPE);
 tlv->len = cpu_to_le32(sizeof(*dump) + reg_ids_size);

 dump = (void *)tlv->data;

 dump->version = cpu_to_le32(IWL_INI_DUMP_VER);
 dump->trigger_id = trigger->trigger_id;
 dump->is_external_cfg =
  cpu_to_le32(fwrt->trans->dbg.external_ini_cfg);

 dump->ver_type = cpu_to_le32(fwrt->dump.fw_ver.type);
 dump->ver_subtype = cpu_to_le32(fwrt->dump.fw_ver.subtype);

 dump->hw_step = cpu_to_le32(CSR_HW_REV_STEP(fwrt->trans->hw_rev));
 dump->hw_type = cpu_to_le32(CSR_HW_REV_TYPE(fwrt->trans->hw_rev));

 dump->rf_id_flavor =
  cpu_to_le32(CSR_HW_RFID_FLAVOR(fwrt->trans->hw_rf_id));
 dump->rf_id_dash = cpu_to_le32(CSR_HW_RFID_DASH(fwrt->trans->hw_rf_id));
 dump->rf_id_step = cpu_to_le32(CSR_HW_RFID_STEP(fwrt->trans->hw_rf_id));
 dump->rf_id_type = cpu_to_le32(CSR_HW_RFID_TYPE(fwrt->trans->hw_rf_id));

 dump->lmac_major = cpu_to_le32(fwrt->dump.fw_ver.lmac_major);
 dump->lmac_minor = cpu_to_le32(fwrt->dump.fw_ver.lmac_minor);
 dump->umac_major = cpu_to_le32(fwrt->dump.fw_ver.umac_major);
 dump->umac_minor = cpu_to_le32(fwrt->dump.fw_ver.umac_minor);

 dump->build_tag_len = cpu_to_le32(sizeof(dump->build_tag));
 memcpy(dump->build_tag, fwrt->fw->human_readable,
        sizeof(dump->build_tag));

 dump->img_name_len = cpu_to_le32(sizeof(dump->img_name));
 memcpy(dump->img_name, fwrt->dump.img_name, sizeof(dump->img_name));

 dump->internal_dbg_cfg_name_len =
  cpu_to_le32(sizeof(dump->internal_dbg_cfg_name));
 memcpy(dump->internal_dbg_cfg_name, fwrt->dump.internal_dbg_cfg_name,
        sizeof(dump->internal_dbg_cfg_name));

 dump->external_dbg_cfg_name_len =
  cpu_to_le32(sizeof(dump->external_dbg_cfg_name));

 memcpy(dump->external_dbg_cfg_name, fwrt->dump.external_dbg_cfg_name,
        sizeof(dump->external_dbg_cfg_name));

 dump->regions_num = trigger->num_regions;
 memcpy(dump->region_ids, trigger->data, reg_ids_size);




 list_add(&entry->list, list);

 return entry->size;
}
