
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans {int dummy; } ;
struct fw_img {scalar_t__ is_dual_cpus; } ;


 int IWL_DEBUG_FW (struct iwl_trans*,char*,char*) ;
 int IWL_DEBUG_POWER (struct iwl_trans*,char*,int ) ;
 int RELEASE_CPU_RESET ;
 int RELEASE_CPU_RESET_BIT ;
 int WFPM_GP2 ;
 int iwl_pcie_apply_destination (struct iwl_trans*) ;
 scalar_t__ iwl_pcie_dbg_on (struct iwl_trans*) ;
 int iwl_pcie_load_cpu_sections_8000 (struct iwl_trans*,struct fw_img const*,int,int*) ;
 int iwl_read_prph (struct iwl_trans*,int ) ;
 int iwl_write_prph (struct iwl_trans*,int ,int) ;

__attribute__((used)) static int iwl_pcie_load_given_ucode_8000(struct iwl_trans *trans,
       const struct fw_img *image)
{
 int ret = 0;
 int first_ucode_section;

 IWL_DEBUG_FW(trans, "working with %s CPU\n",
       image->is_dual_cpus ? "Dual" : "Single");

 if (iwl_pcie_dbg_on(trans))
  iwl_pcie_apply_destination(trans);

 IWL_DEBUG_POWER(trans, "Original WFPM value = 0x%08X\n",
   iwl_read_prph(trans, WFPM_GP2));






 iwl_write_prph(trans, WFPM_GP2, 0x01010101);



 iwl_write_prph(trans, RELEASE_CPU_RESET, RELEASE_CPU_RESET_BIT);


 ret = iwl_pcie_load_cpu_sections_8000(trans, image, 1,
           &first_ucode_section);
 if (ret)
  return ret;


 return iwl_pcie_load_cpu_sections_8000(trans, image, 2,
            &first_ucode_section);
}
