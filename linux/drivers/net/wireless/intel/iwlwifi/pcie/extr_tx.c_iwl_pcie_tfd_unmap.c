
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_txq {int dummy; } ;
struct iwl_trans_pcie {int max_tbs; } ;
struct iwl_trans {TYPE_1__* trans_cfg; int dev; } ;
struct iwl_tfh_tfd {scalar_t__ num_tbs; } ;
struct iwl_tfd {scalar_t__ num_tbs; } ;
struct iwl_cmd_meta {int tbs; } ;
struct TYPE_2__ {scalar_t__ use_tfh; } ;


 int BIT (int) ;
 int DMA_TO_DEVICE ;
 int IWL_ERR (struct iwl_trans*,char*,int) ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int dma_unmap_page (int ,int ,int ,int ) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 void* iwl_pcie_get_tfd (struct iwl_trans*,struct iwl_txq*,int) ;
 int iwl_pcie_tfd_get_num_tbs (struct iwl_trans*,void*) ;
 int iwl_pcie_tfd_tb_get_addr (struct iwl_trans*,void*,int) ;
 int iwl_pcie_tfd_tb_get_len (struct iwl_trans*,void*,int) ;

__attribute__((used)) static void iwl_pcie_tfd_unmap(struct iwl_trans *trans,
          struct iwl_cmd_meta *meta,
          struct iwl_txq *txq, int index)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 int i, num_tbs;
 void *tfd = iwl_pcie_get_tfd(trans, txq, index);


 num_tbs = iwl_pcie_tfd_get_num_tbs(trans, tfd);

 if (num_tbs > trans_pcie->max_tbs) {
  IWL_ERR(trans, "Too many chunks: %i\n", num_tbs);

  return;
 }



 for (i = 1; i < num_tbs; i++) {
  if (meta->tbs & BIT(i))
   dma_unmap_page(trans->dev,
           iwl_pcie_tfd_tb_get_addr(trans, tfd, i),
           iwl_pcie_tfd_tb_get_len(trans, tfd, i),
           DMA_TO_DEVICE);
  else
   dma_unmap_single(trans->dev,
      iwl_pcie_tfd_tb_get_addr(trans, tfd,
          i),
      iwl_pcie_tfd_tb_get_len(trans, tfd,
         i),
      DMA_TO_DEVICE);
 }

 meta->tbs = 0;

 if (trans->trans_cfg->use_tfh) {
  struct iwl_tfh_tfd *tfd_fh = (void *)tfd;

  tfd_fh->num_tbs = 0;
 } else {
  struct iwl_tfd *tfd_fh = (void *)tfd;

  tfd_fh->num_tbs = 0;
 }

}
