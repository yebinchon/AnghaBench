
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_umac_alive {int umac_minor; int umac_major; } ;
struct iwl_lmac_alive {int ucode_minor; int ucode_major; int ver_subtype; int ver_type; } ;
struct TYPE_3__ {void* umac_minor; void* umac_major; void* lmac_minor; void* lmac_major; int subtype; int type; } ;
struct TYPE_4__ {TYPE_1__ fw_ver; } ;
struct iwl_fw_runtime {TYPE_2__ dump; } ;


 void* le32_to_cpu (int ) ;

__attribute__((used)) static inline void iwl_fwrt_update_fw_versions(struct iwl_fw_runtime *fwrt,
            struct iwl_lmac_alive *lmac,
            struct iwl_umac_alive *umac)
{
 if (lmac) {
  fwrt->dump.fw_ver.type = lmac->ver_type;
  fwrt->dump.fw_ver.subtype = lmac->ver_subtype;
  fwrt->dump.fw_ver.lmac_major = le32_to_cpu(lmac->ucode_major);
  fwrt->dump.fw_ver.lmac_minor = le32_to_cpu(lmac->ucode_minor);
 }

 if (umac) {
  fwrt->dump.fw_ver.umac_major = le32_to_cpu(umac->umac_major);
  fwrt->dump.fw_ver.umac_minor = le32_to_cpu(umac->umac_minor);
 }
}
