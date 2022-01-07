
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef char u8 ;
typedef int u32 ;
typedef int u16 ;
struct skge_hw {int chip_id; int phy_type; int copper; int ports; char chip_rev; int ram_size; int ram_offset; int intr_mask; TYPE_1__* pdev; int phy_addr; } ;
struct TYPE_5__ {int dev; } ;


 int B0_CTST ;
 int B0_HWE_IMSK ;
 int B0_HWE_ISRC ;
 int B0_IMSK ;
 int B0_ISRC ;
 int B0_LED ;
 int B0_POWER_CTRL ;
 int B2_CHIP_ID ;
 int B2_E_0 ;
 int B2_E_1 ;
 int B2_IRQM_CTRL ;
 int B2_IRQM_INI ;
 int B2_IRQM_MSK ;
 int B2_MAC_CFG ;
 int B2_PMD_TYP ;
 int B2_TI_CTRL ;
 int B2_TST_CTRL1 ;
 int B2_TST_CTRL2 ;
 int B3_RI_CTRL ;
 int B3_RI_RTO_R1 ;
 int B3_RI_RTO_R2 ;
 int B3_RI_RTO_XA1 ;
 int B3_RI_RTO_XA2 ;
 int B3_RI_RTO_XS1 ;
 int B3_RI_RTO_XS2 ;
 int B3_RI_WTO_R1 ;
 int B3_RI_WTO_R2 ;
 int B3_RI_WTO_XA1 ;
 int B3_RI_WTO_XA2 ;
 int B3_RI_WTO_XS1 ;
 int B3_RI_WTO_XS2 ;
 char CFG_CHIP_R_MSK ;
 char CFG_SNG_MAC ;




 int CS_CLK_RUN_ENA ;
 int CS_CLK_RUN_HOT ;
 int CS_CLK_RUN_RST ;
 int CS_MRST_CLR ;
 int CS_RST_CLR ;
 int CS_RST_SET ;
 int EOPNOTSUPP ;
 int GMAC_LINK_CTRL ;
 int GMLC_RST_CLR ;
 int GMLC_RST_SET ;
 int IS_ERR_MSK ;
 int IS_EXT_REG ;
 int IS_HW_ERR ;
 int IS_IRQ_SENSOR ;
 int IS_XA1_F ;
 int IS_XA2_F ;
 int LED_STAT_ON ;
 int PCI_DEV_REG1 ;
 int PCI_PHY_COMA ;
 int PCI_STATUS ;
 int PCI_STATUS_ERROR_BITS ;
 int PC_VAUX_ENA ;
 int PC_VAUX_OFF ;
 int PC_VCC_ENA ;
 int PC_VCC_ON ;
 int PHY_ADDR_BCOM ;
 int PHY_ADDR_MARV ;
 int PHY_ADDR_XMAC ;
 int RI_RST_CLR ;

 int SK_PHY_MARV_COPPER ;

 int SK_REG (int,int ) ;
 int SK_RI_TO_53 ;
 int TIM_CLR_IRQ ;
 int TIM_START ;
 int TIM_STOP ;
 int TST_CFG_WRITE_OFF ;
 int TST_CFG_WRITE_ON ;
 int TXA_CTRL ;
 int TXA_ENA_ARB ;
 int dev_err (int *,char*,...) ;
 int dev_warn (int *,char*) ;
 int genesis_init (struct skge_hw*) ;
 int genesis_reset (struct skge_hw*,int) ;
 scalar_t__ is_genesis (struct skge_hw*) ;
 int pci_read_config_dword (TYPE_1__*,int ,int *) ;
 int pci_read_config_word (TYPE_1__*,int ,int*) ;
 int pci_write_config_dword (TYPE_1__*,int ,int ) ;
 int pci_write_config_word (TYPE_1__*,int ,int) ;
 int skge_read16 (struct skge_hw*,int ) ;
 int skge_read32 (struct skge_hw*,int ) ;
 int skge_read8 (struct skge_hw*,int ) ;
 int skge_usecs2clk (struct skge_hw*,int) ;
 int skge_write16 (struct skge_hw*,int ,int) ;
 int skge_write32 (struct skge_hw*,int ,int) ;
 int skge_write8 (struct skge_hw*,int ,int) ;
 int yukon_reset (struct skge_hw*,int) ;

__attribute__((used)) static int skge_reset(struct skge_hw *hw)
{
 u32 reg;
 u16 ctst, pci_status;
 u8 t8, mac_cfg, pmd_type;
 int i;

 ctst = skge_read16(hw, B0_CTST);


 skge_write8(hw, B0_CTST, CS_RST_SET);
 skge_write8(hw, B0_CTST, CS_RST_CLR);


 skge_write8(hw, B2_TST_CTRL1, TST_CFG_WRITE_ON);
 skge_write8(hw, B2_TST_CTRL2, 0);

 pci_read_config_word(hw->pdev, PCI_STATUS, &pci_status);
 pci_write_config_word(hw->pdev, PCI_STATUS,
         pci_status | PCI_STATUS_ERROR_BITS);
 skge_write8(hw, B2_TST_CTRL1, TST_CFG_WRITE_OFF);
 skge_write8(hw, B0_CTST, CS_MRST_CLR);


 skge_write16(hw, B0_CTST,
       ctst & (CS_CLK_RUN_HOT|CS_CLK_RUN_RST|CS_CLK_RUN_ENA));

 hw->chip_id = skge_read8(hw, B2_CHIP_ID);
 hw->phy_type = skge_read8(hw, B2_E_1) & 0xf;
 pmd_type = skge_read8(hw, B2_PMD_TYP);
 hw->copper = (pmd_type == 'T' || pmd_type == '1');

 switch (hw->chip_id) {
 case 133:
  dev_err(&hw->pdev->dev, "Genesis chip detected but not configured\n");
  return -EOPNOTSUPP;


 case 132:
 case 131:
 case 130:
  if (hw->phy_type < SK_PHY_MARV_COPPER && pmd_type != 'S')
   hw->copper = 1;

  hw->phy_addr = PHY_ADDR_MARV;
  break;

 default:
  dev_err(&hw->pdev->dev, "unsupported chip type 0x%x\n",
         hw->chip_id);
  return -EOPNOTSUPP;
 }

 mac_cfg = skge_read8(hw, B2_MAC_CFG);
 hw->ports = (mac_cfg & CFG_SNG_MAC) ? 1 : 2;
 hw->chip_rev = (mac_cfg & CFG_CHIP_R_MSK) >> 4;


 t8 = skge_read8(hw, B2_E_0);
 if (is_genesis(hw)) {
  if (t8 == 3) {

   hw->ram_size = 0x100000;
   hw->ram_offset = 0x80000;
  } else
   hw->ram_size = t8 * 512;
 } else if (t8 == 0)
  hw->ram_size = 0x20000;
 else
  hw->ram_size = t8 * 4096;

 hw->intr_mask = IS_HW_ERR;


 if (!(is_genesis(hw) && hw->phy_type == 128))
  hw->intr_mask |= IS_EXT_REG;

 if (is_genesis(hw))
  genesis_init(hw);
 else {

  skge_write8(hw, B0_POWER_CTRL,
       PC_VAUX_ENA | PC_VCC_ENA | PC_VAUX_OFF | PC_VCC_ON);


  if ((skge_read32(hw, B0_ISRC) & IS_HW_ERR) &&
      (skge_read32(hw, B0_HWE_ISRC) & IS_IRQ_SENSOR)) {
   dev_warn(&hw->pdev->dev, "stuck hardware sensor bit\n");
   hw->intr_mask &= ~IS_HW_ERR;
  }


  skge_write8(hw, B2_TST_CTRL1, TST_CFG_WRITE_ON);
  pci_read_config_dword(hw->pdev, PCI_DEV_REG1, &reg);
  reg &= ~PCI_PHY_COMA;
  pci_write_config_dword(hw->pdev, PCI_DEV_REG1, reg);
  skge_write8(hw, B2_TST_CTRL1, TST_CFG_WRITE_OFF);


  for (i = 0; i < hw->ports; i++) {
   skge_write16(hw, SK_REG(i, GMAC_LINK_CTRL), GMLC_RST_SET);
   skge_write16(hw, SK_REG(i, GMAC_LINK_CTRL), GMLC_RST_CLR);
  }
 }


 skge_write8(hw, B2_TI_CTRL, TIM_STOP);
 skge_write8(hw, B2_TI_CTRL, TIM_CLR_IRQ);
 skge_write8(hw, B0_LED, LED_STAT_ON);


 for (i = 0; i < hw->ports; i++)
  skge_write8(hw, SK_REG(i, TXA_CTRL), TXA_ENA_ARB);


 skge_write16(hw, B3_RI_CTRL, RI_RST_CLR);

 skge_write8(hw, B3_RI_WTO_R1, SK_RI_TO_53);
 skge_write8(hw, B3_RI_WTO_XA1, SK_RI_TO_53);
 skge_write8(hw, B3_RI_WTO_XS1, SK_RI_TO_53);
 skge_write8(hw, B3_RI_RTO_R1, SK_RI_TO_53);
 skge_write8(hw, B3_RI_RTO_XA1, SK_RI_TO_53);
 skge_write8(hw, B3_RI_RTO_XS1, SK_RI_TO_53);
 skge_write8(hw, B3_RI_WTO_R2, SK_RI_TO_53);
 skge_write8(hw, B3_RI_WTO_XA2, SK_RI_TO_53);
 skge_write8(hw, B3_RI_WTO_XS2, SK_RI_TO_53);
 skge_write8(hw, B3_RI_RTO_R2, SK_RI_TO_53);
 skge_write8(hw, B3_RI_RTO_XA2, SK_RI_TO_53);
 skge_write8(hw, B3_RI_RTO_XS2, SK_RI_TO_53);

 skge_write32(hw, B0_HWE_IMSK, IS_ERR_MSK);




 skge_write32(hw, B2_IRQM_MSK, IS_XA1_F|IS_XA2_F);
 skge_write32(hw, B2_IRQM_INI, skge_usecs2clk(hw, 100));
 skge_write32(hw, B2_IRQM_CTRL, TIM_START);


 skge_write32(hw, B0_IMSK, 0);

 for (i = 0; i < hw->ports; i++) {
  if (is_genesis(hw))
   genesis_reset(hw, i);
  else
   yukon_reset(hw, i);
 }

 return 0;
}
