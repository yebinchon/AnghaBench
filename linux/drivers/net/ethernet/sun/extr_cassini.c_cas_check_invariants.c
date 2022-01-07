
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int devfn; } ;
struct page {int dummy; } ;
struct cas {int page_order; int page_size; int tx_fifo_size; int phy_type; int phy_addr; int phy_id; int cas_flags; scalar_t__ regs; TYPE_1__* dev; int rx_fifo_size; struct pci_dev* pdev; } ;
struct TYPE_2__ {int dev_addr; } ;


 int CAS_BMSR_1000_EXTEND ;
 int CAS_FLAG_1000MB_CAP ;
 scalar_t__ CAS_JUMBO_PAGE_SHIFT ;
 int CAS_MAX_MTU ;
 int CAS_MII_1000_EXTEND ;
 int CAS_PHY_MII_MDIO0 ;
 int CAS_PHY_MII_MDIO1 ;
 int CAS_PHY_SERDES ;
 int GFP_ATOMIC ;
 int MIF_CFG_MDIO_0 ;
 int MIF_CFG_MDIO_1 ;
 int MII_BMSR ;
 int MII_PHYSID1 ;
 int MII_PHYSID2 ;
 scalar_t__ PAGE_SHIFT ;
 int PAGE_SIZE ;
 int PCI_SLOT (int ) ;
 int PCS_DATAPATH_MODE_MII ;
 scalar_t__ REG_MIF_CFG ;
 scalar_t__ REG_MIF_STATE_MACHINE ;
 scalar_t__ REG_PCS_DATAPATH_MODE ;
 scalar_t__ REG_TX_FIFO_SIZE ;
 int RX_FIFO_SIZE ;
 int __free_pages (struct page*,scalar_t__) ;
 struct page* alloc_pages (int ,scalar_t__) ;
 int cas_get_vpd_info (struct cas*,int ,int ) ;
 int cas_mif_poll (struct cas*,int ) ;
 int cas_phy_read (struct cas*,int ) ;
 int pr_err (char*,int) ;
 int printk (char*,int ) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int cas_check_invariants(struct cas *cp)
{
 struct pci_dev *pdev = cp->pdev;
 u32 cfg;
 int i;


 cp->page_order = 0;
 cp->page_size = (PAGE_SIZE << cp->page_order);


 cp->tx_fifo_size = readl(cp->regs + REG_TX_FIFO_SIZE) * 64;
 cp->rx_fifo_size = RX_FIFO_SIZE;




 cp->phy_type = cas_get_vpd_info(cp, cp->dev->dev_addr,
     PCI_SLOT(pdev->devfn));
 if (cp->phy_type & CAS_PHY_SERDES) {
  cp->cas_flags |= CAS_FLAG_1000MB_CAP;
  return 0;
 }


 cfg = readl(cp->regs + REG_MIF_CFG);
 if (cfg & MIF_CFG_MDIO_1) {
  cp->phy_type = CAS_PHY_MII_MDIO1;
 } else if (cfg & MIF_CFG_MDIO_0) {
  cp->phy_type = CAS_PHY_MII_MDIO0;
 }

 cas_mif_poll(cp, 0);
 writel(PCS_DATAPATH_MODE_MII, cp->regs + REG_PCS_DATAPATH_MODE);

 for (i = 0; i < 32; i++) {
  u32 phy_id;
  int j;

  for (j = 0; j < 3; j++) {
   cp->phy_addr = i;
   phy_id = cas_phy_read(cp, MII_PHYSID1) << 16;
   phy_id |= cas_phy_read(cp, MII_PHYSID2);
   if (phy_id && (phy_id != 0xFFFFFFFF)) {
    cp->phy_id = phy_id;
    goto done;
   }
  }
 }
 pr_err("MII phy did not respond [%08x]\n",
        readl(cp->regs + REG_MIF_STATE_MACHINE));
 return -1;

done:

 cfg = cas_phy_read(cp, MII_BMSR);
 if ((cfg & CAS_BMSR_1000_EXTEND) &&
     cas_phy_read(cp, CAS_MII_1000_EXTEND))
  cp->cas_flags |= CAS_FLAG_1000MB_CAP;
 return 0;
}
