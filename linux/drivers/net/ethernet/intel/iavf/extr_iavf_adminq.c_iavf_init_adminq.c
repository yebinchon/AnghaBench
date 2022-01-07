
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ num_arq_entries; scalar_t__ num_asq_entries; scalar_t__ arq_buf_size; scalar_t__ asq_buf_size; int asq_cmd_timeout; } ;
struct iavf_hw {TYPE_1__ aq; } ;
typedef enum iavf_status { ____Placeholder_iavf_status } iavf_status ;


 int IAVF_ASQ_CMD_TIMEOUT ;
 int IAVF_ERR_CONFIG ;
 int iavf_adminq_init_regs (struct iavf_hw*) ;
 int iavf_init_arq (struct iavf_hw*) ;
 int iavf_init_asq (struct iavf_hw*) ;
 int iavf_shutdown_asq (struct iavf_hw*) ;

enum iavf_status iavf_init_adminq(struct iavf_hw *hw)
{
 enum iavf_status ret_code;


 if ((hw->aq.num_arq_entries == 0) ||
     (hw->aq.num_asq_entries == 0) ||
     (hw->aq.arq_buf_size == 0) ||
     (hw->aq.asq_buf_size == 0)) {
  ret_code = IAVF_ERR_CONFIG;
  goto init_adminq_exit;
 }


 iavf_adminq_init_regs(hw);


 hw->aq.asq_cmd_timeout = IAVF_ASQ_CMD_TIMEOUT;


 ret_code = iavf_init_asq(hw);
 if (ret_code)
  goto init_adminq_destroy_locks;


 ret_code = iavf_init_arq(hw);
 if (ret_code)
  goto init_adminq_free_asq;


 goto init_adminq_exit;

init_adminq_free_asq:
 iavf_shutdown_asq(hw);
init_adminq_destroy_locks:

init_adminq_exit:
 return ret_code;
}
