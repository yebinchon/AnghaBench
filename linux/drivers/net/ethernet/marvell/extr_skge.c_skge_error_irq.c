
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct skge_hw {int intr_mask; struct pci_dev* pdev; TYPE_1__** dev; } ;
struct pci_dev {int dev; } ;
struct TYPE_2__ {int name; } ;


 int B0_HWE_ISRC ;
 int B0_R1_CSR ;
 int B0_R2_CSR ;
 int B2_TST_CTRL1 ;
 int B3_RI_CTRL ;
 int CSR_IRQ_CL_P ;
 int GMAC_TI_ST_CTRL ;
 int GMT_ST_CLR_IRQ ;
 int IS_HW_ERR ;
 int IS_IRQ_MST_ERR ;
 int IS_IRQ_STAT ;
 int IS_IRQ_TIST_OV ;
 int IS_M1_PAR_ERR ;
 int IS_M2_PAR_ERR ;
 int IS_NO_STAT_M1 ;
 int IS_NO_STAT_M2 ;
 int IS_NO_TIST_M1 ;
 int IS_NO_TIST_M2 ;
 int IS_R1_PAR_ERR ;
 int IS_R2_PAR_ERR ;
 int IS_RAM_RD_PAR ;
 int IS_RAM_WR_PAR ;
 int MFF_CLR_INSTAT ;
 int PCI_COMMAND ;
 int PCI_COMMAND_PARITY ;
 int PCI_COMMAND_SERR ;
 int PCI_STATUS ;
 int PCI_STATUS_ERROR_BITS ;
 int RI_CLR_RD_PERR ;
 int RI_CLR_WR_PERR ;
 int RX_MFF_CTRL1 ;
 int RX_MFF_CTRL2 ;
 int TST_CFG_WRITE_OFF ;
 int TST_CFG_WRITE_ON ;
 int dev_err (int *,char*,...) ;
 int dev_warn (int *,char*) ;
 scalar_t__ is_genesis (struct skge_hw*) ;
 int pci_read_config_word (struct pci_dev*,int ,int*) ;
 int pci_write_config_word (struct pci_dev*,int ,int) ;
 int skge_mac_parity (struct skge_hw*,int) ;
 int skge_read32 (struct skge_hw*,int ) ;
 int skge_write16 (struct skge_hw*,int ,int ) ;
 int skge_write32 (struct skge_hw*,int ,int ) ;
 int skge_write8 (struct skge_hw*,int ,int ) ;

__attribute__((used)) static void skge_error_irq(struct skge_hw *hw)
{
 struct pci_dev *pdev = hw->pdev;
 u32 hwstatus = skge_read32(hw, B0_HWE_ISRC);

 if (is_genesis(hw)) {

  if (hwstatus & (IS_NO_STAT_M1|IS_NO_TIST_M1))
   skge_write16(hw, RX_MFF_CTRL1, MFF_CLR_INSTAT);
  if (hwstatus & (IS_NO_STAT_M2|IS_NO_TIST_M2))
   skge_write16(hw, RX_MFF_CTRL2, MFF_CLR_INSTAT);
 } else {

  if (hwstatus & IS_IRQ_TIST_OV)
   skge_write8(hw, GMAC_TI_ST_CTRL, GMT_ST_CLR_IRQ);
 }

 if (hwstatus & IS_RAM_RD_PAR) {
  dev_err(&pdev->dev, "Ram read data parity error\n");
  skge_write16(hw, B3_RI_CTRL, RI_CLR_RD_PERR);
 }

 if (hwstatus & IS_RAM_WR_PAR) {
  dev_err(&pdev->dev, "Ram write data parity error\n");
  skge_write16(hw, B3_RI_CTRL, RI_CLR_WR_PERR);
 }

 if (hwstatus & IS_M1_PAR_ERR)
  skge_mac_parity(hw, 0);

 if (hwstatus & IS_M2_PAR_ERR)
  skge_mac_parity(hw, 1);

 if (hwstatus & IS_R1_PAR_ERR) {
  dev_err(&pdev->dev, "%s: receive queue parity error\n",
   hw->dev[0]->name);
  skge_write32(hw, B0_R1_CSR, CSR_IRQ_CL_P);
 }

 if (hwstatus & IS_R2_PAR_ERR) {
  dev_err(&pdev->dev, "%s: receive queue parity error\n",
   hw->dev[1]->name);
  skge_write32(hw, B0_R2_CSR, CSR_IRQ_CL_P);
 }

 if (hwstatus & (IS_IRQ_MST_ERR|IS_IRQ_STAT)) {
  u16 pci_status, pci_cmd;

  pci_read_config_word(pdev, PCI_COMMAND, &pci_cmd);
  pci_read_config_word(pdev, PCI_STATUS, &pci_status);

  dev_err(&pdev->dev, "PCI error cmd=%#x status=%#x\n",
   pci_cmd, pci_status);


  pci_status &= PCI_STATUS_ERROR_BITS;
  skge_write8(hw, B2_TST_CTRL1, TST_CFG_WRITE_ON);
  pci_write_config_word(pdev, PCI_COMMAND,
          pci_cmd | PCI_COMMAND_SERR | PCI_COMMAND_PARITY);
  pci_write_config_word(pdev, PCI_STATUS, pci_status);
  skge_write8(hw, B2_TST_CTRL1, TST_CFG_WRITE_OFF);


  hwstatus = skge_read32(hw, B0_HWE_ISRC);
  if (hwstatus & IS_IRQ_STAT) {
   dev_warn(&hw->pdev->dev, "unable to clear error (so ignoring them)\n");
   hw->intr_mask &= ~IS_HW_ERR;
  }
 }
}
