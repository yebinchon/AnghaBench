
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_self_init_dram {size_t fw_cnt; int paging_cnt; TYPE_1__* paging; TYPE_1__* fw; } ;
struct iwl_trans {struct iwl_self_init_dram init_dram; } ;
struct iwl_context_info_dram {void** virtual_img; void** umac_img; void** lmac_img; } ;
struct fw_img {int * sec; } ;
struct TYPE_3__ {int physical; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ WARN (TYPE_1__*,char*,int ) ;
 void* cpu_to_le64 (int ) ;
 int iwl_pcie_ctxt_info_alloc_dma (struct iwl_trans*,int *,TYPE_1__*) ;
 int iwl_pcie_ctxt_info_free_paging (struct iwl_trans*) ;
 int iwl_pcie_get_num_sections (struct fw_img const*,int) ;
 void* kcalloc (int,int,int ) ;

int iwl_pcie_init_fw_sec(struct iwl_trans *trans,
    const struct fw_img *fw,
    struct iwl_context_info_dram *ctxt_dram)
{
 struct iwl_self_init_dram *dram = &trans->init_dram;
 int i, ret, lmac_cnt, umac_cnt, paging_cnt;

 if (WARN(dram->paging,
   "paging shouldn't already be initialized (%d pages)\n",
   dram->paging_cnt))
  iwl_pcie_ctxt_info_free_paging(trans);

 lmac_cnt = iwl_pcie_get_num_sections(fw, 0);

 umac_cnt = iwl_pcie_get_num_sections(fw, lmac_cnt + 1);

 paging_cnt = iwl_pcie_get_num_sections(fw, lmac_cnt + umac_cnt + 2);

 dram->fw = kcalloc(umac_cnt + lmac_cnt, sizeof(*dram->fw), GFP_KERNEL);
 if (!dram->fw)
  return -ENOMEM;
 dram->paging = kcalloc(paging_cnt, sizeof(*dram->paging), GFP_KERNEL);
 if (!dram->paging)
  return -ENOMEM;


 for (i = 0; i < lmac_cnt; i++) {
  ret = iwl_pcie_ctxt_info_alloc_dma(trans, &fw->sec[i],
         &dram->fw[dram->fw_cnt]);
  if (ret)
   return ret;
  ctxt_dram->lmac_img[i] =
   cpu_to_le64(dram->fw[dram->fw_cnt].physical);
  dram->fw_cnt++;
 }


 for (i = 0; i < umac_cnt; i++) {

  ret = iwl_pcie_ctxt_info_alloc_dma(trans,
         &fw->sec[dram->fw_cnt + 1],
         &dram->fw[dram->fw_cnt]);
  if (ret)
   return ret;
  ctxt_dram->umac_img[i] =
   cpu_to_le64(dram->fw[dram->fw_cnt].physical);
  dram->fw_cnt++;
 }
 for (i = 0; i < paging_cnt; i++) {

  int fw_idx = dram->fw_cnt + i + 2;

  ret = iwl_pcie_ctxt_info_alloc_dma(trans, &fw->sec[fw_idx],
         &dram->paging[i]);
  if (ret)
   return ret;

  ctxt_dram->virtual_img[i] =
   cpu_to_le64(dram->paging[i].physical);
  dram->paging_cnt++;
 }

 return 0;
}
