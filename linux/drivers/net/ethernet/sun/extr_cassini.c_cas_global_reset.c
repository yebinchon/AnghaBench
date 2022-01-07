
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cas {scalar_t__ regs; int dev; int phy_type; } ;


 int BIM_CFG_DPAR_INTR_ENABLE ;
 int BIM_CFG_RMA_INTR_ENABLE ;
 int BIM_CFG_RTA_INTR_ENABLE ;
 int CAS_PHY_MII (int ) ;
 int PCI_ERR_BADACK ;
 int PCI_ERR_BIM_DMA_READ ;
 int PCI_ERR_BIM_DMA_WRITE ;
 int PCI_ERR_DTRTO ;
 int PCI_ERR_OTHER ;
 int PCS_DATAPATH_MODE_MII ;
 scalar_t__ REG_BIM_CFG ;
 scalar_t__ REG_PCI_ERR_STATUS_MASK ;
 scalar_t__ REG_PCS_DATAPATH_MODE ;
 scalar_t__ REG_SW_RESET ;
 int STOP_TRIES ;
 int SW_RESET_BLOCK_PCS_SLINK ;
 int SW_RESET_RX ;
 int SW_RESET_TX ;
 int mdelay (int) ;
 int netdev_err (int ,char*) ;
 int readl (scalar_t__) ;
 int udelay (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void cas_global_reset(struct cas *cp, int blkflag)
{
 int limit;


 if (blkflag && !CAS_PHY_MII(cp->phy_type)) {






  writel((SW_RESET_TX | SW_RESET_RX | SW_RESET_BLOCK_PCS_SLINK),
         cp->regs + REG_SW_RESET);
 } else {
  writel(SW_RESET_TX | SW_RESET_RX, cp->regs + REG_SW_RESET);
 }


 mdelay(3);

 limit = STOP_TRIES;
 while (limit-- > 0) {
  u32 val = readl(cp->regs + REG_SW_RESET);
  if ((val & (SW_RESET_TX | SW_RESET_RX)) == 0)
   goto done;
  udelay(10);
 }
 netdev_err(cp->dev, "sw reset failed\n");

done:

 writel(BIM_CFG_DPAR_INTR_ENABLE | BIM_CFG_RMA_INTR_ENABLE |
        BIM_CFG_RTA_INTR_ENABLE, cp->regs + REG_BIM_CFG);





 writel(0xFFFFFFFFU & ~(PCI_ERR_BADACK | PCI_ERR_DTRTO |
          PCI_ERR_OTHER | PCI_ERR_BIM_DMA_WRITE |
          PCI_ERR_BIM_DMA_READ), cp->regs +
        REG_PCI_ERR_STATUS_MASK);




 writel(PCS_DATAPATH_MODE_MII, cp->regs + REG_PCS_DATAPATH_MODE);
}
