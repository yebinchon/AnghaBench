
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * arq_bi; } ;
struct TYPE_5__ {int dma_head; int desc_buf; TYPE_1__ r; } ;
struct TYPE_6__ {int num_arq_entries; TYPE_2__ arq; } ;
struct iavf_hw {TYPE_3__ aq; } ;


 int iavf_free_dma_mem (struct iavf_hw*,int *) ;
 int iavf_free_virt_mem (struct iavf_hw*,int *) ;

__attribute__((used)) static void iavf_free_arq_bufs(struct iavf_hw *hw)
{
 int i;


 for (i = 0; i < hw->aq.num_arq_entries; i++)
  iavf_free_dma_mem(hw, &hw->aq.arq.r.arq_bi[i]);


 iavf_free_dma_mem(hw, &hw->aq.arq.desc_buf);


 iavf_free_virt_mem(hw, &hw->aq.arq.dma_head);
}
