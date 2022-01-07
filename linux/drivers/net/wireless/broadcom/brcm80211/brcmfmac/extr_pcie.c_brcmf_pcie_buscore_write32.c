
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct brcmf_pciedev_info {int pdev; } ;


 int brcmf_pcie_buscore_prep_addr (int ,int ) ;
 int brcmf_pcie_write_reg32 (struct brcmf_pciedev_info*,int ,int ) ;

__attribute__((used)) static void brcmf_pcie_buscore_write32(void *ctx, u32 addr, u32 value)
{
 struct brcmf_pciedev_info *devinfo = (struct brcmf_pciedev_info *)ctx;

 addr = brcmf_pcie_buscore_prep_addr(devinfo->pdev, addr);
 brcmf_pcie_write_reg32(devinfo, addr, value);
}
