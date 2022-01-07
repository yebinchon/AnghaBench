
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct brcmf_pciedev_info {struct brcmf_chip* ci; } ;
struct brcmf_chip {int dummy; } ;


 int BRCMF_PCIE_PCIE2REG_MAILBOXINT ;
 int brcmf_pcie_read_reg32 (struct brcmf_pciedev_info*,int ) ;
 int brcmf_pcie_reset_device (struct brcmf_pciedev_info*) ;
 int brcmf_pcie_write_reg32 (struct brcmf_pciedev_info*,int ,int) ;

__attribute__((used)) static int brcmf_pcie_buscore_reset(void *ctx, struct brcmf_chip *chip)
{
 struct brcmf_pciedev_info *devinfo = (struct brcmf_pciedev_info *)ctx;
 u32 val;

 devinfo->ci = chip;
 brcmf_pcie_reset_device(devinfo);

 val = brcmf_pcie_read_reg32(devinfo, BRCMF_PCIE_PCIE2REG_MAILBOXINT);
 if (val != 0xffffffff)
  brcmf_pcie_write_reg32(devinfo, BRCMF_PCIE_PCIE2REG_MAILBOXINT,
           val);

 return 0;
}
