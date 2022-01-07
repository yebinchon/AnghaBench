
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ va; } ;
struct TYPE_6__ {struct iavf_dma_mem* asq_bi; } ;
struct TYPE_7__ {TYPE_4__ dma_head; TYPE_1__ r; } ;
struct TYPE_8__ {int num_asq_entries; TYPE_2__ asq; int asq_buf_size; } ;
struct iavf_hw {TYPE_3__ aq; } ;
struct iavf_dma_mem {int dummy; } ;
typedef enum iavf_status { ____Placeholder_iavf_status } iavf_status ;


 int IAVF_ADMINQ_DESC_ALIGNMENT ;
 int iavf_allocate_dma_mem (struct iavf_hw*,struct iavf_dma_mem*,int ,int ,int ) ;
 int iavf_allocate_virt_mem (struct iavf_hw*,TYPE_4__*,int) ;
 int iavf_free_dma_mem (struct iavf_hw*,struct iavf_dma_mem*) ;
 int iavf_free_virt_mem (struct iavf_hw*,TYPE_4__*) ;
 int iavf_mem_asq_buf ;

__attribute__((used)) static enum iavf_status iavf_alloc_asq_bufs(struct iavf_hw *hw)
{
 struct iavf_dma_mem *bi;
 enum iavf_status ret_code;
 int i;


 ret_code = iavf_allocate_virt_mem(hw, &hw->aq.asq.dma_head,
       (hw->aq.num_asq_entries *
        sizeof(struct iavf_dma_mem)));
 if (ret_code)
  goto alloc_asq_bufs;
 hw->aq.asq.r.asq_bi = (struct iavf_dma_mem *)hw->aq.asq.dma_head.va;


 for (i = 0; i < hw->aq.num_asq_entries; i++) {
  bi = &hw->aq.asq.r.asq_bi[i];
  ret_code = iavf_allocate_dma_mem(hw, bi,
       iavf_mem_asq_buf,
       hw->aq.asq_buf_size,
       IAVF_ADMINQ_DESC_ALIGNMENT);
  if (ret_code)
   goto unwind_alloc_asq_bufs;
 }
alloc_asq_bufs:
 return ret_code;

unwind_alloc_asq_bufs:

 i--;
 for (; i >= 0; i--)
  iavf_free_dma_mem(hw, &hw->aq.asq.r.asq_bi[i]);
 iavf_free_virt_mem(hw, &hw->aq.asq.dma_head);

 return ret_code;
}
