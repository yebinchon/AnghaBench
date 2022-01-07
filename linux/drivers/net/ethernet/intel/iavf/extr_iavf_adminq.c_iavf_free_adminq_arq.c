
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int desc_buf; } ;
struct TYPE_4__ {TYPE_1__ arq; } ;
struct iavf_hw {TYPE_2__ aq; } ;


 int iavf_free_dma_mem (struct iavf_hw*,int *) ;

__attribute__((used)) static void iavf_free_adminq_arq(struct iavf_hw *hw)
{
 iavf_free_dma_mem(hw, &hw->aq.arq.desc_buf);
}
