
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct brcmf_pciedev_info {int pdev; } ;


 int brcmf_pcie_buscore_prep_addr (int ,int ) ;
 int brcmf_pcie_read_reg32 (struct brcmf_pciedev_info*,int ) ;

__attribute__((used)) static u32 brcmf_pcie_buscore_read32(void *ctx, u32 addr)
{
 struct brcmf_pciedev_info *devinfo = (struct brcmf_pciedev_info *)ctx;

 addr = brcmf_pcie_buscore_prep_addr(devinfo->pdev, addr);
 return brcmf_pcie_read_reg32(devinfo, addr);
}
