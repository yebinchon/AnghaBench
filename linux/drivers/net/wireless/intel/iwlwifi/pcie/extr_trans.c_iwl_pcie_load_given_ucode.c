
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* fw_mon; } ;
struct iwl_trans {TYPE_3__ dbg; TYPE_1__* trans_cfg; } ;
struct fw_img {scalar_t__ is_dual_cpus; } ;
struct TYPE_8__ {scalar_t__ fw_monitor; } ;
struct TYPE_6__ {int size; int physical; } ;
struct TYPE_5__ {scalar_t__ device_family; } ;


 int CSR_RESET ;
 int IWL_DEBUG_FW (struct iwl_trans*,char*,char*) ;
 scalar_t__ IWL_DEVICE_FAMILY_7000 ;
 int LMPM_SECURE_CPU2_HDR_MEM_SPACE ;
 int LMPM_SECURE_UCODE_LOAD_CPU2_HDR_ADDR ;
 int MON_BUFF_BASE_ADDR ;
 int MON_BUFF_END_ADDR ;
 int iwl_enable_interrupts (struct iwl_trans*) ;
 int iwl_pcie_alloc_fw_monitor (struct iwl_trans*,int ) ;
 int iwl_pcie_apply_destination (struct iwl_trans*) ;
 scalar_t__ iwl_pcie_dbg_on (struct iwl_trans*) ;
 int iwl_pcie_load_cpu_sections (struct iwl_trans*,struct fw_img const*,int,int*) ;
 int iwl_write32 (struct iwl_trans*,int ,int ) ;
 int iwl_write_prph (struct iwl_trans*,int ,int) ;
 TYPE_4__ iwlwifi_mod_params ;

__attribute__((used)) static int iwl_pcie_load_given_ucode(struct iwl_trans *trans,
    const struct fw_img *image)
{
 int ret = 0;
 int first_ucode_section;

 IWL_DEBUG_FW(trans, "working with %s CPU\n",
       image->is_dual_cpus ? "Dual" : "Single");


 ret = iwl_pcie_load_cpu_sections(trans, image, 1, &first_ucode_section);
 if (ret)
  return ret;

 if (image->is_dual_cpus) {

  iwl_write_prph(trans,
          LMPM_SECURE_UCODE_LOAD_CPU2_HDR_ADDR,
          LMPM_SECURE_CPU2_HDR_MEM_SPACE);


  ret = iwl_pcie_load_cpu_sections(trans, image, 2,
       &first_ucode_section);
  if (ret)
   return ret;
 }


 if (iwlwifi_mod_params.fw_monitor &&
     trans->trans_cfg->device_family == IWL_DEVICE_FAMILY_7000) {
  iwl_pcie_alloc_fw_monitor(trans, 0);

  if (trans->dbg.fw_mon[0].size) {
   iwl_write_prph(trans, MON_BUFF_BASE_ADDR,
           trans->dbg.fw_mon[0].physical >> 4);
   iwl_write_prph(trans, MON_BUFF_END_ADDR,
           (trans->dbg.fw_mon[0].physical +
     trans->dbg.fw_mon[0].size) >> 4);
  }
 } else if (iwl_pcie_dbg_on(trans)) {
  iwl_pcie_apply_destination(trans);
 }

 iwl_enable_interrupts(trans);


 iwl_write32(trans, CSR_RESET, 0);

 return 0;
}
