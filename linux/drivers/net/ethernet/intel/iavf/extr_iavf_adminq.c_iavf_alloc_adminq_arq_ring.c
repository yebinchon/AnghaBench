
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int desc_buf; } ;
struct TYPE_4__ {int num_arq_entries; TYPE_1__ arq; } ;
struct iavf_hw {TYPE_2__ aq; } ;
struct iavf_aq_desc {int dummy; } ;
typedef enum iavf_status { ____Placeholder_iavf_status } iavf_status ;


 int IAVF_ADMINQ_DESC_ALIGNMENT ;
 int iavf_allocate_dma_mem (struct iavf_hw*,int *,int ,int,int ) ;
 int iavf_mem_arq_ring ;

__attribute__((used)) static enum iavf_status iavf_alloc_adminq_arq_ring(struct iavf_hw *hw)
{
 enum iavf_status ret_code;

 ret_code = iavf_allocate_dma_mem(hw, &hw->aq.arq.desc_buf,
      iavf_mem_arq_ring,
      (hw->aq.num_arq_entries *
      sizeof(struct iavf_aq_desc)),
      IAVF_ADMINQ_DESC_ALIGNMENT);

 return ret_code;
}
