
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct iwl_txq {int * first_tb_bufs; int write_ptr; } ;
struct iwl_trans {int dev; } ;
struct iwl_tfh_tfd {int dummy; } ;
struct iwl_device_cmd {int hdr; } ;
struct iwl_cmd_meta {int dummy; } ;
struct iwl_cmd_header {int dummy; } ;
typedef int dma_addr_t ;


 int DMA_TO_DEVICE ;
 int IWL_FIRST_TB_SIZE ;
 int dma_map_single (int ,void*,int,int ) ;
 int dma_mapping_error (int ,int ) ;
 scalar_t__ iwl_pcie_gen2_build_amsdu (struct iwl_trans*,struct sk_buff*,struct iwl_tfh_tfd*,int,int,struct iwl_device_cmd*) ;
 int iwl_pcie_gen2_set_tb (struct iwl_trans*,struct iwl_tfh_tfd*,int ,int) ;
 int iwl_pcie_gen2_tfd_unmap (struct iwl_trans*,struct iwl_cmd_meta*,struct iwl_tfh_tfd*) ;
 int iwl_pcie_get_cmd_index (struct iwl_txq*,int ) ;
 int iwl_pcie_get_first_tb_dma (struct iwl_txq*,int) ;
 struct iwl_tfh_tfd* iwl_pcie_get_tfd (struct iwl_trans*,struct iwl_txq*,int) ;
 int memcpy (int *,struct iwl_device_cmd*,int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static struct
iwl_tfh_tfd *iwl_pcie_gen2_build_tx_amsdu(struct iwl_trans *trans,
       struct iwl_txq *txq,
       struct iwl_device_cmd *dev_cmd,
       struct sk_buff *skb,
       struct iwl_cmd_meta *out_meta,
       int hdr_len,
       int tx_cmd_len)
{
 int idx = iwl_pcie_get_cmd_index(txq, txq->write_ptr);
 struct iwl_tfh_tfd *tfd = iwl_pcie_get_tfd(trans, txq, idx);
 dma_addr_t tb_phys;
 int len;
 void *tb1_addr;

 tb_phys = iwl_pcie_get_first_tb_dma(txq, idx);

 iwl_pcie_gen2_set_tb(trans, tfd, tb_phys, IWL_FIRST_TB_SIZE);







 len = tx_cmd_len + sizeof(struct iwl_cmd_header) + hdr_len -
       IWL_FIRST_TB_SIZE;




 tb1_addr = ((u8 *)&dev_cmd->hdr) + IWL_FIRST_TB_SIZE;
 tb_phys = dma_map_single(trans->dev, tb1_addr, len, DMA_TO_DEVICE);
 if (unlikely(dma_mapping_error(trans->dev, tb_phys)))
  goto out_err;
 iwl_pcie_gen2_set_tb(trans, tfd, tb_phys, len);

 if (iwl_pcie_gen2_build_amsdu(trans, skb, tfd,
          len + IWL_FIRST_TB_SIZE,
          hdr_len, dev_cmd))
  goto out_err;


 memcpy(&txq->first_tb_bufs[idx], dev_cmd, IWL_FIRST_TB_SIZE);
 return tfd;

out_err:
 iwl_pcie_gen2_tfd_unmap(trans, out_meta, tfd);
 return ((void*)0);
}
