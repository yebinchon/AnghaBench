
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct brcmf_pcie_shared_info {scalar_t__ htod_mb_data_addr; } ;
struct brcmf_pciedev_info {int pdev; int ci; struct brcmf_pcie_shared_info shared; } ;
struct brcmf_core {int rev; } ;


 int BCMA_CORE_PCIE2 ;
 int BRCMF_PCIE_REG_SBMBX ;
 int EIO ;
 int PCIE ;
 struct brcmf_core* brcmf_chip_get_core (int ,int ) ;
 int brcmf_dbg (int ,char*,scalar_t__) ;
 scalar_t__ brcmf_pcie_read_tcm32 (struct brcmf_pciedev_info*,scalar_t__) ;
 int brcmf_pcie_write_tcm32 (struct brcmf_pciedev_info*,scalar_t__,scalar_t__) ;
 int msleep (int) ;
 int pci_write_config_dword (int ,int ,int) ;

__attribute__((used)) static int
brcmf_pcie_send_mb_data(struct brcmf_pciedev_info *devinfo, u32 htod_mb_data)
{
 struct brcmf_pcie_shared_info *shared;
 struct brcmf_core *core;
 u32 addr;
 u32 cur_htod_mb_data;
 u32 i;

 shared = &devinfo->shared;
 addr = shared->htod_mb_data_addr;
 cur_htod_mb_data = brcmf_pcie_read_tcm32(devinfo, addr);

 if (cur_htod_mb_data != 0)
  brcmf_dbg(PCIE, "MB transaction is already pending 0x%04x\n",
     cur_htod_mb_data);

 i = 0;
 while (cur_htod_mb_data != 0) {
  msleep(10);
  i++;
  if (i > 100)
   return -EIO;
  cur_htod_mb_data = brcmf_pcie_read_tcm32(devinfo, addr);
 }

 brcmf_pcie_write_tcm32(devinfo, addr, htod_mb_data);
 pci_write_config_dword(devinfo->pdev, BRCMF_PCIE_REG_SBMBX, 1);


 core = brcmf_chip_get_core(devinfo->ci, BCMA_CORE_PCIE2);
 if (core->rev <= 13)
  pci_write_config_dword(devinfo->pdev, BRCMF_PCIE_REG_SBMBX, 1);

 return 0;
}
