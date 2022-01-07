
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_self_init_dram {int paging_cnt; TYPE_1__* paging; } ;
struct iwl_trans {int dev; struct iwl_self_init_dram init_dram; } ;
struct TYPE_2__ {int physical; int block; int size; } ;


 int WARN_ON (int) ;
 int dma_free_coherent (int ,int ,int ,int ) ;
 int kfree (TYPE_1__*) ;

void iwl_pcie_ctxt_info_free_paging(struct iwl_trans *trans)
{
 struct iwl_self_init_dram *dram = &trans->init_dram;
 int i;

 if (!dram->paging) {
  WARN_ON(dram->paging_cnt);
  return;
 }


 for (i = 0; i < dram->paging_cnt; i++)
  dma_free_coherent(trans->dev, dram->paging[i].size,
      dram->paging[i].block,
      dram->paging[i].physical);

 kfree(dram->paging);
 dram->paging_cnt = 0;
 dram->paging = ((void*)0);
}
