
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u16 ;
struct nicpf {TYPE_1__* hw; int pdev; } ;
struct TYPE_2__ {int bgx_cnt; } ;


 int MAX_LMAC_PER_BGX ;
 int NIC_PF_LMAC_0_7_CFG ;
 int PCI_SUBSYSTEM_ID ;
 scalar_t__ PCI_SUBSYS_DEVID_81XX_NIC_PF ;
 int nic_reg_read (struct nicpf*,int) ;
 int nic_reg_write (struct nicpf*,int,int) ;
 int pci_read_config_word (int ,int ,scalar_t__*) ;

__attribute__((used)) static void nic_set_tx_pkt_pad(struct nicpf *nic, int size)
{
 int lmac, max_lmac;
 u16 sdevid;
 u64 lmac_cfg;







 if (size > 52)
  size = 52;

 pci_read_config_word(nic->pdev, PCI_SUBSYSTEM_ID, &sdevid);

 if (sdevid == PCI_SUBSYS_DEVID_81XX_NIC_PF)
  max_lmac = ((nic->hw->bgx_cnt - 1) * MAX_LMAC_PER_BGX) + 1;
 else
  max_lmac = nic->hw->bgx_cnt * MAX_LMAC_PER_BGX;

 for (lmac = 0; lmac < max_lmac; lmac++) {
  lmac_cfg = nic_reg_read(nic, NIC_PF_LMAC_0_7_CFG | (lmac << 3));
  lmac_cfg &= ~(0xF << 2);
  lmac_cfg |= ((size / 4) << 2);
  nic_reg_write(nic, NIC_PF_LMAC_0_7_CFG | (lmac << 3), lmac_cfg);
 }
}
