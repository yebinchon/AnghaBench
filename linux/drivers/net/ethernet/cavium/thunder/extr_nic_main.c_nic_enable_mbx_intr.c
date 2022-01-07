
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nicpf {int pdev; } ;


 int INTR_MASK (int) ;
 scalar_t__ NIC_PF_MAILBOX_ENA_W1S ;
 scalar_t__ NIC_PF_MAILBOX_INT ;
 int nic_reg_write (struct nicpf*,scalar_t__,int ) ;
 int pci_sriov_get_totalvfs (int ) ;

__attribute__((used)) static void nic_enable_mbx_intr(struct nicpf *nic)
{
 int vf_cnt = pci_sriov_get_totalvfs(nic->pdev);




 nic_reg_write(nic, NIC_PF_MAILBOX_INT, ((vf_cnt < 64) ? (BIT_ULL(vf_cnt) - 1) : (~0ull)));


 nic_reg_write(nic, NIC_PF_MAILBOX_ENA_W1S, ((vf_cnt < 64) ? (BIT_ULL(vf_cnt) - 1) : (~0ull)));

 if (vf_cnt > 64) {
  nic_reg_write(nic, NIC_PF_MAILBOX_INT + sizeof(u64),
         ((vf_cnt - 64 < 64) ? (BIT_ULL(vf_cnt - 64) - 1) : (~0ull)));
  nic_reg_write(nic, NIC_PF_MAILBOX_ENA_W1S + sizeof(u64),
         ((vf_cnt - 64 < 64) ? (BIT_ULL(vf_cnt - 64) - 1) : (~0ull)));
 }
}
