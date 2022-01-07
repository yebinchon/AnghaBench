
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans_pcie {int * prph_info; scalar_t__ prph_info_dma_addr; int * prph_scratch; scalar_t__ prph_scratch_dma_addr; int * ctxt_info_gen3; scalar_t__ ctxt_info_dma_addr; } ;
struct iwl_trans {int dev; } ;


 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int dma_free_coherent (int ,int,int *,scalar_t__) ;
 int iwl_pcie_ctxt_info_free_fw_img (struct iwl_trans*) ;

void iwl_pcie_ctxt_info_gen3_free(struct iwl_trans *trans)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);

 if (!trans_pcie->ctxt_info_gen3)
  return;

 dma_free_coherent(trans->dev, sizeof(*trans_pcie->ctxt_info_gen3),
     trans_pcie->ctxt_info_gen3,
     trans_pcie->ctxt_info_dma_addr);
 trans_pcie->ctxt_info_dma_addr = 0;
 trans_pcie->ctxt_info_gen3 = ((void*)0);

 iwl_pcie_ctxt_info_free_fw_img(trans);

 dma_free_coherent(trans->dev, sizeof(*trans_pcie->prph_scratch),
     trans_pcie->prph_scratch,
     trans_pcie->prph_scratch_dma_addr);
 trans_pcie->prph_scratch_dma_addr = 0;
 trans_pcie->prph_scratch = ((void*)0);

 dma_free_coherent(trans->dev, sizeof(*trans_pcie->prph_info),
     trans_pcie->prph_info,
     trans_pcie->prph_info_dma_addr);
 trans_pcie->prph_info_dma_addr = 0;
 trans_pcie->prph_info = ((void*)0);
}
