
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_trans_pcie {int max_tbs; } ;
struct iwl_trans {int dev; } ;
struct iwl_tfh_tfd {int num_tbs; TYPE_1__* tbs; } ;
struct iwl_cmd_meta {int tbs; } ;
struct TYPE_2__ {int tb_len; int addr; } ;


 int BIT (int) ;
 int DMA_TO_DEVICE ;
 int IWL_ERR (struct iwl_trans*,char*,int) ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int dma_unmap_page (int ,int ,int ,int ) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int iwl_pcie_gen2_get_num_tbs (struct iwl_trans*,struct iwl_tfh_tfd*) ;
 int le16_to_cpu (int ) ;
 int le64_to_cpu (int ) ;

__attribute__((used)) static void iwl_pcie_gen2_tfd_unmap(struct iwl_trans *trans,
        struct iwl_cmd_meta *meta,
        struct iwl_tfh_tfd *tfd)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 int i, num_tbs;


 num_tbs = iwl_pcie_gen2_get_num_tbs(trans, tfd);

 if (num_tbs > trans_pcie->max_tbs) {
  IWL_ERR(trans, "Too many chunks: %i\n", num_tbs);
  return;
 }


 for (i = 1; i < num_tbs; i++) {
  if (meta->tbs & BIT(i))
   dma_unmap_page(trans->dev,
           le64_to_cpu(tfd->tbs[i].addr),
           le16_to_cpu(tfd->tbs[i].tb_len),
           DMA_TO_DEVICE);
  else
   dma_unmap_single(trans->dev,
      le64_to_cpu(tfd->tbs[i].addr),
      le16_to_cpu(tfd->tbs[i].tb_len),
      DMA_TO_DEVICE);
 }

 tfd->num_tbs = 0;
}
