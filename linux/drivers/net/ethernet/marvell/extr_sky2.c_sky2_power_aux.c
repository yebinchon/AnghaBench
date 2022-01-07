
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sky2_hw {scalar_t__ chip_id; scalar_t__ chip_rev; int pdev; } ;


 int B0_CTST ;
 int B0_POWER_CTRL ;
 int B2_Y2_CLK_GATE ;
 scalar_t__ CHIP_ID_YUKON_XL ;
 scalar_t__ CHIP_REV_YU_XL_A1 ;
 int PCI_D3cold ;
 int PC_VAUX_ENA ;
 int PC_VAUX_ON ;
 int PC_VCC_ENA ;
 int PC_VCC_OFF ;
 int Y2_CLK_GAT_LNK1_DIS ;
 int Y2_CLK_GAT_LNK2_DIS ;
 int Y2_COR_CLK_LNK1_DIS ;
 int Y2_COR_CLK_LNK2_DIS ;
 int Y2_LED_STAT_OFF ;
 int Y2_PCI_CLK_LNK1_DIS ;
 int Y2_PCI_CLK_LNK2_DIS ;
 int Y2_VAUX_AVAIL ;
 scalar_t__ pci_pme_capable (int ,int ) ;
 int sky2_read32 (struct sky2_hw*,int ) ;
 int sky2_write16 (struct sky2_hw*,int ,int ) ;
 int sky2_write8 (struct sky2_hw*,int ,int) ;

__attribute__((used)) static void sky2_power_aux(struct sky2_hw *hw)
{
 if (hw->chip_id == CHIP_ID_YUKON_XL && hw->chip_rev > CHIP_REV_YU_XL_A1)
  sky2_write8(hw, B2_Y2_CLK_GATE, 0);
 else

  sky2_write8(hw, B2_Y2_CLK_GATE,
       Y2_PCI_CLK_LNK1_DIS | Y2_COR_CLK_LNK1_DIS |
       Y2_CLK_GAT_LNK1_DIS | Y2_PCI_CLK_LNK2_DIS |
       Y2_COR_CLK_LNK2_DIS | Y2_CLK_GAT_LNK2_DIS);


 if ( (sky2_read32(hw, B0_CTST) & Y2_VAUX_AVAIL) &&
      pci_pme_capable(hw->pdev, PCI_D3cold))
  sky2_write8(hw, B0_POWER_CTRL,
       (PC_VAUX_ENA | PC_VCC_ENA |
        PC_VAUX_ON | PC_VCC_OFF));


 sky2_write16(hw, B0_CTST, Y2_LED_STAT_OFF);
}
