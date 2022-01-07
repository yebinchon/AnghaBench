
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sky2_hw {scalar_t__ chip_id; scalar_t__ chip_rev; int flags; } ;


 int B0_CTST ;
 int B0_POWER_CTRL ;
 int B2_GP_IO ;
 int B2_Y2_CLK_CTRL ;
 int B2_Y2_CLK_GATE ;
 scalar_t__ CHIP_ID_YUKON_XL ;
 scalar_t__ CHIP_REV_YU_XL_A1 ;
 int GLB_GPIO_STAT_RACE_DIS ;
 int PCI_CFG_REG_1 ;
 int PCI_DEV_REG3 ;
 int PCI_DEV_REG4 ;
 int PCI_DEV_REG5 ;
 int PC_VAUX_ENA ;
 int PC_VAUX_OFF ;
 int PC_VCC_ENA ;
 int PC_VCC_ON ;
 int P_ASPM_CONTROL_MSK ;
 int P_CTL_TIM_VMAIN_AV_MSK ;
 int SKY2_HW_ADV_POWER_CTL ;
 int Y2_CLK_DIV_DIS ;
 int Y2_CLK_GAT_LNK1_DIS ;
 int Y2_CLK_GAT_LNK2_DIS ;
 int Y2_COR_CLK_LNK1_DIS ;
 int Y2_COR_CLK_LNK2_DIS ;
 int Y2_HW_WOL_ON ;
 int Y2_LED_STAT_ON ;
 int Y2_PCI_CLK_LNK1_DIS ;
 int Y2_PCI_CLK_LNK2_DIS ;
 int sky2_pci_read32 (struct sky2_hw*,int ) ;
 int sky2_pci_write32 (struct sky2_hw*,int ,int ) ;
 int sky2_read32 (struct sky2_hw*,int ) ;
 int sky2_write16 (struct sky2_hw*,int ,int ) ;
 int sky2_write32 (struct sky2_hw*,int ,int ) ;
 int sky2_write8 (struct sky2_hw*,int ,int) ;

__attribute__((used)) static void sky2_power_on(struct sky2_hw *hw)
{

 sky2_write8(hw, B0_POWER_CTRL,
      PC_VAUX_ENA | PC_VCC_ENA | PC_VAUX_OFF | PC_VCC_ON);


 sky2_write32(hw, B2_Y2_CLK_CTRL, Y2_CLK_DIV_DIS);

 if (hw->chip_id == CHIP_ID_YUKON_XL && hw->chip_rev > CHIP_REV_YU_XL_A1)

  sky2_write8(hw, B2_Y2_CLK_GATE,
       Y2_PCI_CLK_LNK1_DIS | Y2_COR_CLK_LNK1_DIS |
       Y2_CLK_GAT_LNK1_DIS | Y2_PCI_CLK_LNK2_DIS |
       Y2_COR_CLK_LNK2_DIS | Y2_CLK_GAT_LNK2_DIS);
 else
  sky2_write8(hw, B2_Y2_CLK_GATE, 0);

 if (hw->flags & SKY2_HW_ADV_POWER_CTL) {
  u32 reg;

  sky2_pci_write32(hw, PCI_DEV_REG3, 0);

  reg = sky2_pci_read32(hw, PCI_DEV_REG4);

  reg &= P_ASPM_CONTROL_MSK;
  sky2_pci_write32(hw, PCI_DEV_REG4, reg);

  reg = sky2_pci_read32(hw, PCI_DEV_REG5);

  reg &= P_CTL_TIM_VMAIN_AV_MSK;
  sky2_pci_write32(hw, PCI_DEV_REG5, reg);

  sky2_pci_write32(hw, PCI_CFG_REG_1, 0);

  sky2_write16(hw, B0_CTST, Y2_HW_WOL_ON);


  reg = sky2_read32(hw, B2_GP_IO);
  reg |= GLB_GPIO_STAT_RACE_DIS;
  sky2_write32(hw, B2_GP_IO, reg);

  sky2_read32(hw, B2_GP_IO);
 }


 sky2_write16(hw, B0_CTST, Y2_LED_STAT_ON);
}
