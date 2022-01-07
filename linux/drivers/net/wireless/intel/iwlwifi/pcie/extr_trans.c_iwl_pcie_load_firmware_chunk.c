
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_trans_pcie {int ucode_write_complete; int ucode_write_waitq; } ;
struct iwl_trans {int dummy; } ;
typedef int dma_addr_t ;


 int EIO ;
 int ETIMEDOUT ;
 int HZ ;
 int IWL_ERR (struct iwl_trans*,char*) ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int iwl_pcie_load_firmware_chunk_fh (struct iwl_trans*,int ,int ,int ) ;
 int iwl_trans_grab_nic_access (struct iwl_trans*,unsigned long*) ;
 int iwl_trans_pcie_dump_regs (struct iwl_trans*) ;
 int iwl_trans_release_nic_access (struct iwl_trans*,unsigned long*) ;
 int wait_event_timeout (int ,int,int) ;

__attribute__((used)) static int iwl_pcie_load_firmware_chunk(struct iwl_trans *trans,
     u32 dst_addr, dma_addr_t phy_addr,
     u32 byte_cnt)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 unsigned long flags;
 int ret;

 trans_pcie->ucode_write_complete = 0;

 if (!iwl_trans_grab_nic_access(trans, &flags))
  return -EIO;

 iwl_pcie_load_firmware_chunk_fh(trans, dst_addr, phy_addr,
     byte_cnt);
 iwl_trans_release_nic_access(trans, &flags);

 ret = wait_event_timeout(trans_pcie->ucode_write_waitq,
     trans_pcie->ucode_write_complete, 5 * HZ);
 if (!ret) {
  IWL_ERR(trans, "Failed to load firmware chunk!\n");
  iwl_trans_pcie_dump_regs(trans);
  return -ETIMEDOUT;
 }

 return 0;
}
