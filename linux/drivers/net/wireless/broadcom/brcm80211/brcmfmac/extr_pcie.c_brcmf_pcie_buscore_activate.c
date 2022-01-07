
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct brcmf_pciedev_info {int dummy; } ;
struct brcmf_chip {int dummy; } ;


 int brcmf_pcie_write_tcm32 (struct brcmf_pciedev_info*,int ,int ) ;

__attribute__((used)) static void brcmf_pcie_buscore_activate(void *ctx, struct brcmf_chip *chip,
     u32 rstvec)
{
 struct brcmf_pciedev_info *devinfo = (struct brcmf_pciedev_info *)ctx;

 brcmf_pcie_write_tcm32(devinfo, 0, rstvec);
}
