
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ count; scalar_t__ next_to_clean; scalar_t__ next_to_use; } ;
struct TYPE_4__ {scalar_t__ num_arq_entries; scalar_t__ arq_buf_size; TYPE_1__ arq; } ;
struct iavf_hw {TYPE_2__ aq; } ;
typedef enum iavf_status { ____Placeholder_iavf_status } iavf_status ;


 int IAVF_ERR_CONFIG ;
 int IAVF_ERR_NOT_READY ;
 int iavf_alloc_adminq_arq_ring (struct iavf_hw*) ;
 int iavf_alloc_arq_bufs (struct iavf_hw*) ;
 int iavf_config_arq_regs (struct iavf_hw*) ;
 int iavf_free_adminq_arq (struct iavf_hw*) ;

__attribute__((used)) static enum iavf_status iavf_init_arq(struct iavf_hw *hw)
{
 enum iavf_status ret_code = 0;

 if (hw->aq.arq.count > 0) {

  ret_code = IAVF_ERR_NOT_READY;
  goto init_adminq_exit;
 }


 if ((hw->aq.num_arq_entries == 0) ||
     (hw->aq.arq_buf_size == 0)) {
  ret_code = IAVF_ERR_CONFIG;
  goto init_adminq_exit;
 }

 hw->aq.arq.next_to_use = 0;
 hw->aq.arq.next_to_clean = 0;


 ret_code = iavf_alloc_adminq_arq_ring(hw);
 if (ret_code)
  goto init_adminq_exit;


 ret_code = iavf_alloc_arq_bufs(hw);
 if (ret_code)
  goto init_adminq_free_rings;


 ret_code = iavf_config_arq_regs(hw);
 if (ret_code)
  goto init_adminq_free_rings;


 hw->aq.arq.count = hw->aq.num_arq_entries;
 goto init_adminq_exit;

init_adminq_free_rings:
 iavf_free_adminq_arq(hw);

init_adminq_exit:
 return ret_code;
}
