
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans_pcie {int ict_tbl_dma; int ict_tbl; } ;
struct iwl_trans {int dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ICT_SIZE ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 scalar_t__ WARN_ON (int) ;
 int dma_alloc_coherent (int ,int,int*,int ) ;
 int iwl_pcie_free_ict (struct iwl_trans*) ;

int iwl_pcie_alloc_ict(struct iwl_trans *trans)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);

 trans_pcie->ict_tbl =
  dma_alloc_coherent(trans->dev, ICT_SIZE,
       &trans_pcie->ict_tbl_dma, GFP_KERNEL);
 if (!trans_pcie->ict_tbl)
  return -ENOMEM;


 if (WARN_ON(trans_pcie->ict_tbl_dma & (ICT_SIZE - 1))) {
  iwl_pcie_free_ict(trans);
  return -EINVAL;
 }

 return 0;
}
