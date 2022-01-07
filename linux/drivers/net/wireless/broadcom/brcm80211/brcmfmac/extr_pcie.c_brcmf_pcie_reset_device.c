
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
typedef size_t u16 ;
struct brcmf_pciedev_info {int ci; int pdev; } ;
struct brcmf_core {int rev; } ;


 size_t ARRAY_SIZE (size_t*) ;
 int BCMA_CORE_CHIPCOMMON ;
 int BCMA_CORE_PCIE2 ;
 size_t BRCMF_PCIE_CFGREG_LINK_STATUS_CTRL2 ;
 size_t BRCMF_PCIE_CFGREG_MSI_ADDR_H ;
 size_t BRCMF_PCIE_CFGREG_MSI_ADDR_L ;
 size_t BRCMF_PCIE_CFGREG_MSI_CAP ;
 size_t BRCMF_PCIE_CFGREG_MSI_DATA ;
 size_t BRCMF_PCIE_CFGREG_PML1_SUB_CTRL1 ;
 size_t BRCMF_PCIE_CFGREG_PM_CSR ;
 size_t BRCMF_PCIE_CFGREG_RBAR_CTRL ;
 size_t BRCMF_PCIE_CFGREG_REG_BAR2_CONFIG ;
 size_t BRCMF_PCIE_CFGREG_REG_BAR3_CONFIG ;
 size_t BRCMF_PCIE_CFGREG_STATUS_CMD ;
 size_t BRCMF_PCIE_LINK_STATUS_CTRL_ASPM_ENAB ;
 int BRCMF_PCIE_PCIE2REG_CONFIGADDR ;
 int BRCMF_PCIE_PCIE2REG_CONFIGDATA ;
 int BRCMF_PCIE_REG_LINK_STATUS_CTRL ;
 int PCIE ;
 int WRITECC32 (struct brcmf_pciedev_info*,int ,int) ;
 struct brcmf_core* brcmf_chip_get_core (int ,int ) ;
 int brcmf_dbg (int ,char*,size_t,size_t) ;
 size_t brcmf_pcie_read_reg32 (struct brcmf_pciedev_info*,int ) ;
 int brcmf_pcie_select_core (struct brcmf_pciedev_info*,int ) ;
 int brcmf_pcie_write_reg32 (struct brcmf_pciedev_info*,int ,size_t) ;
 int msleep (int) ;
 int pci_read_config_dword (int ,int ,size_t*) ;
 int pci_write_config_dword (int ,int ,size_t) ;
 int watchdog ;

__attribute__((used)) static void brcmf_pcie_reset_device(struct brcmf_pciedev_info *devinfo)
{
 struct brcmf_core *core;
 u16 cfg_offset[] = { BRCMF_PCIE_CFGREG_STATUS_CMD,
        BRCMF_PCIE_CFGREG_PM_CSR,
        BRCMF_PCIE_CFGREG_MSI_CAP,
        BRCMF_PCIE_CFGREG_MSI_ADDR_L,
        BRCMF_PCIE_CFGREG_MSI_ADDR_H,
        BRCMF_PCIE_CFGREG_MSI_DATA,
        BRCMF_PCIE_CFGREG_LINK_STATUS_CTRL2,
        BRCMF_PCIE_CFGREG_RBAR_CTRL,
        BRCMF_PCIE_CFGREG_PML1_SUB_CTRL1,
        BRCMF_PCIE_CFGREG_REG_BAR2_CONFIG,
        BRCMF_PCIE_CFGREG_REG_BAR3_CONFIG };
 u32 i;
 u32 val;
 u32 lsc;

 if (!devinfo->ci)
  return;


 brcmf_pcie_select_core(devinfo, BCMA_CORE_PCIE2);
 pci_read_config_dword(devinfo->pdev, BRCMF_PCIE_REG_LINK_STATUS_CTRL,
         &lsc);
 val = lsc & (~BRCMF_PCIE_LINK_STATUS_CTRL_ASPM_ENAB);
 pci_write_config_dword(devinfo->pdev, BRCMF_PCIE_REG_LINK_STATUS_CTRL,
          val);


 brcmf_pcie_select_core(devinfo, BCMA_CORE_CHIPCOMMON);
 WRITECC32(devinfo, watchdog, 4);
 msleep(100);


 brcmf_pcie_select_core(devinfo, BCMA_CORE_PCIE2);
 pci_write_config_dword(devinfo->pdev, BRCMF_PCIE_REG_LINK_STATUS_CTRL,
          lsc);

 core = brcmf_chip_get_core(devinfo->ci, BCMA_CORE_PCIE2);
 if (core->rev <= 13) {
  for (i = 0; i < ARRAY_SIZE(cfg_offset); i++) {
   brcmf_pcie_write_reg32(devinfo,
            BRCMF_PCIE_PCIE2REG_CONFIGADDR,
            cfg_offset[i]);
   val = brcmf_pcie_read_reg32(devinfo,
    BRCMF_PCIE_PCIE2REG_CONFIGDATA);
   brcmf_dbg(PCIE, "config offset 0x%04x, value 0x%04x\n",
      cfg_offset[i], val);
   brcmf_pcie_write_reg32(devinfo,
            BRCMF_PCIE_PCIE2REG_CONFIGDATA,
            val);
  }
 }
}
