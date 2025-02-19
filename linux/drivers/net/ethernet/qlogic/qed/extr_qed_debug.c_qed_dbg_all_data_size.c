
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct qed_hwfn {int dummy; } ;
struct TYPE_2__ {size_t engine_for_debug; } ;
struct qed_dev {scalar_t__ num_hwfns; TYPE_1__ dbg_params; struct qed_hwfn* hwfns; } ;


 int DP_VERBOSE (struct qed_dev*,int ,char*) ;
 int QED_MSG_DEBUG ;
 int QED_NVM_IMAGE_DEFAULT_CFG ;
 int QED_NVM_IMAGE_NVM_CFG1 ;
 int QED_NVM_IMAGE_NVM_META ;
 int REGDUMP_HEADER_SIZE ;
 int qed_dbg_fw_asserts_size (struct qed_dev*) ;
 int qed_dbg_grc_size (struct qed_dev*) ;
 int qed_dbg_idle_chk_size (struct qed_dev*) ;
 int qed_dbg_igu_fifo_size (struct qed_dev*) ;
 int qed_dbg_mcp_trace_size (struct qed_dev*) ;
 int qed_dbg_nvm_image_length (struct qed_hwfn*,int ,int*) ;
 int qed_dbg_protection_override_size (struct qed_dev*) ;
 int qed_dbg_reg_fifo_size (struct qed_dev*) ;
 scalar_t__ qed_get_debug_engine (struct qed_dev*) ;
 int qed_set_debug_engine (struct qed_dev*,scalar_t__) ;

int qed_dbg_all_data_size(struct qed_dev *cdev)
{
 struct qed_hwfn *p_hwfn =
  &cdev->hwfns[cdev->dbg_params.engine_for_debug];
 u32 regs_len = 0, image_len = 0;
 u8 cur_engine, org_engine;

 org_engine = qed_get_debug_engine(cdev);
 for (cur_engine = 0; cur_engine < cdev->num_hwfns; cur_engine++) {

  DP_VERBOSE(cdev, QED_MSG_DEBUG,
      "calculating idle_chk and grcdump register length for current engine\n");
  qed_set_debug_engine(cdev, cur_engine);
  regs_len += REGDUMP_HEADER_SIZE + qed_dbg_idle_chk_size(cdev) +
       REGDUMP_HEADER_SIZE + qed_dbg_idle_chk_size(cdev) +
       REGDUMP_HEADER_SIZE + qed_dbg_grc_size(cdev) +
       REGDUMP_HEADER_SIZE + qed_dbg_reg_fifo_size(cdev) +
       REGDUMP_HEADER_SIZE + qed_dbg_igu_fifo_size(cdev) +
       REGDUMP_HEADER_SIZE +
       qed_dbg_protection_override_size(cdev) +
       REGDUMP_HEADER_SIZE + qed_dbg_fw_asserts_size(cdev);
 }

 qed_set_debug_engine(cdev, org_engine);


 regs_len += REGDUMP_HEADER_SIZE + qed_dbg_mcp_trace_size(cdev);
 qed_dbg_nvm_image_length(p_hwfn, QED_NVM_IMAGE_NVM_CFG1, &image_len);
 if (image_len)
  regs_len += REGDUMP_HEADER_SIZE + image_len;
 qed_dbg_nvm_image_length(p_hwfn, QED_NVM_IMAGE_DEFAULT_CFG, &image_len);
 if (image_len)
  regs_len += REGDUMP_HEADER_SIZE + image_len;
 qed_dbg_nvm_image_length(p_hwfn, QED_NVM_IMAGE_NVM_META, &image_len);
 if (image_len)
  regs_len += REGDUMP_HEADER_SIZE + image_len;

 return regs_len;
}
