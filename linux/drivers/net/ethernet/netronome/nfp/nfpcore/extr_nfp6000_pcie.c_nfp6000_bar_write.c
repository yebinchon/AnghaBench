
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nfp_bar {int index; int barcfg; } ;
struct TYPE_2__ {scalar_t__ csr; } ;
struct nfp6000_pcie {int pdev; TYPE_1__ iomem; } ;


 int NFP_PCIE_CFG_BAR_PCIETOCPPEXPANSIONBAR (int,int) ;
 int NFP_PCIE_CPP_BAR_PCIETOCPPEXPANSIONBAR (int,int) ;
 int pci_write_config_dword (int ,int,int ) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int
nfp6000_bar_write(struct nfp6000_pcie *nfp, struct nfp_bar *bar, u32 newcfg)
{
 int base, slot;
 int xbar;

 base = bar->index >> 3;
 slot = bar->index & 7;

 if (nfp->iomem.csr) {
  xbar = NFP_PCIE_CPP_BAR_PCIETOCPPEXPANSIONBAR(base, slot);
  writel(newcfg, nfp->iomem.csr + xbar);

  readl(nfp->iomem.csr + xbar);
 } else {
  xbar = NFP_PCIE_CFG_BAR_PCIETOCPPEXPANSIONBAR(base, slot);
  pci_write_config_dword(nfp->pdev, xbar, newcfg);
 }

 bar->barcfg = newcfg;

 return 0;
}
