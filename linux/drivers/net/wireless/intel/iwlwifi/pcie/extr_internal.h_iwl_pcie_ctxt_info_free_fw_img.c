
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_self_init_dram {int fw_cnt; TYPE_1__* fw; } ;
struct iwl_trans {int dev; struct iwl_self_init_dram init_dram; } ;
struct TYPE_2__ {int physical; int block; int size; } ;


 int WARN_ON (int) ;
 int dma_free_coherent (int ,int ,int ,int ) ;
 int kfree (TYPE_1__*) ;

__attribute__((used)) static inline void iwl_pcie_ctxt_info_free_fw_img(struct iwl_trans *trans)
{
 struct iwl_self_init_dram *dram = &trans->init_dram;
 int i;

 if (!dram->fw) {
  WARN_ON(dram->fw_cnt);
  return;
 }

 for (i = 0; i < dram->fw_cnt; i++)
  dma_free_coherent(trans->dev, dram->fw[i].size,
      dram->fw[i].block, dram->fw[i].physical);

 kfree(dram->fw);
 dram->fw_cnt = 0;
 dram->fw = ((void*)0);
}
