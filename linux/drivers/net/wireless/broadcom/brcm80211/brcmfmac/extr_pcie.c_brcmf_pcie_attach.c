
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct brcmf_pciedev_info {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int BCMA_CORE_PCIE2 ;
 int BRCMF_PCIE_PCIE2REG_CONFIGADDR ;
 int BRCMF_PCIE_PCIE2REG_CONFIGDATA ;
 int brcmf_pcie_read_reg32 (struct brcmf_pciedev_info*,int ) ;
 int brcmf_pcie_select_core (struct brcmf_pciedev_info*,int ) ;
 int brcmf_pcie_write_reg32 (struct brcmf_pciedev_info*,int ,int) ;
 int device_wakeup_enable (int *) ;

__attribute__((used)) static void brcmf_pcie_attach(struct brcmf_pciedev_info *devinfo)
{
 u32 config;


 brcmf_pcie_select_core(devinfo, BCMA_CORE_PCIE2);
 brcmf_pcie_write_reg32(devinfo, BRCMF_PCIE_PCIE2REG_CONFIGADDR, 0x4e0);
 config = brcmf_pcie_read_reg32(devinfo, BRCMF_PCIE_PCIE2REG_CONFIGDATA);
 brcmf_pcie_write_reg32(devinfo, BRCMF_PCIE_PCIE2REG_CONFIGDATA, config);

 device_wakeup_enable(&devinfo->pdev->dev);
}
