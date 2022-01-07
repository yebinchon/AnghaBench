
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int desc_buf; } ;
struct TYPE_4__ {int num_arq_entries; TYPE_1__ arq; } ;
struct i40e_hw {TYPE_2__ aq; } ;
struct i40e_aq_desc {int dummy; } ;
typedef int i40e_status ;


 int I40E_ADMINQ_DESC_ALIGNMENT ;
 int i40e_allocate_dma_mem (struct i40e_hw*,int *,int ,int,int ) ;
 int i40e_mem_arq_ring ;

__attribute__((used)) static i40e_status i40e_alloc_adminq_arq_ring(struct i40e_hw *hw)
{
 i40e_status ret_code;

 ret_code = i40e_allocate_dma_mem(hw, &hw->aq.arq.desc_buf,
      i40e_mem_arq_ring,
      (hw->aq.num_arq_entries *
      sizeof(struct i40e_aq_desc)),
      I40E_ADMINQ_DESC_ALIGNMENT);

 return ret_code;
}
