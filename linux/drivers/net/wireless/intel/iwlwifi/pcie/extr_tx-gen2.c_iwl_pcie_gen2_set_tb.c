
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct iwl_trans_pcie {scalar_t__ max_tbs; } ;
struct iwl_trans {int dummy; } ;
struct iwl_tfh_tfd {void* num_tbs; struct iwl_tfh_tb* tbs; } ;
struct iwl_tfh_tb {void* tb_len; int addr; } ;
typedef int dma_addr_t ;


 int EINVAL ;
 int IWL_ERR (struct iwl_trans*,char*,scalar_t__) ;
 int IWL_TFH_NUM_TBS ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 scalar_t__ WARN_ON (int) ;
 void* cpu_to_le16 (int) ;
 int iwl_pcie_gen2_get_num_tbs (struct iwl_trans*,struct iwl_tfh_tfd*) ;
 scalar_t__ le16_to_cpu (void*) ;
 int put_unaligned_le64 (int ,int *) ;

__attribute__((used)) static int iwl_pcie_gen2_set_tb(struct iwl_trans *trans,
    struct iwl_tfh_tfd *tfd, dma_addr_t addr,
    u16 len)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 int idx = iwl_pcie_gen2_get_num_tbs(trans, tfd);
 struct iwl_tfh_tb *tb;

 if (WARN_ON(idx >= IWL_TFH_NUM_TBS))
  return -EINVAL;
 tb = &tfd->tbs[idx];


 if (le16_to_cpu(tfd->num_tbs) >= trans_pcie->max_tbs) {
  IWL_ERR(trans, "Error can not send more than %d chunks\n",
   trans_pcie->max_tbs);
  return -EINVAL;
 }

 put_unaligned_le64(addr, &tb->addr);
 tb->tb_len = cpu_to_le16(len);

 tfd->num_tbs = cpu_to_le16(idx + 1);

 return idx;
}
