
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct e1000_hw {int dummy; } ;
typedef int s32 ;


 int E1000_CTRL ;
 int E1000_CTRL_EXT ;
 int E1000_CTRL_EXT_PHYPDEN ;
 int E1000_CTRL_EXT_SDLPE ;
 int E1000_CTRL_PHY_RST ;
 int E1000_EEARBC_I210 ;
 int E1000_ERR_PHY ;
 int E1000_INVM_AUTOLOAD ;
 int E1000_INVM_DEFAULT_AL ;
 int E1000_INVM_PLL_WO_VAL ;
 int E1000_MAX_PLL_TRIES ;
 int E1000_MDICNFG ;
 int E1000_MDICNFG_EXT_MDIO ;
 int E1000_PCI_PMCSR ;
 int E1000_PCI_PMCSR_D3 ;
 int E1000_PHY_PLL_FREQ_PAGE ;
 int E1000_PHY_PLL_FREQ_REG ;
 int E1000_PHY_PLL_UNCONF ;
 int E1000_WUC ;
 int I347AT4_PAGE_SELECT ;
 int igb_read_invm_word_i210 (struct e1000_hw*,int,int*) ;
 int igb_read_pci_cfg (struct e1000_hw*,int ,int*) ;
 int igb_read_phy_reg_82580 (struct e1000_hw*,int ,int*) ;
 int igb_write_pci_cfg (struct e1000_hw*,int ,int*) ;
 int igb_write_phy_reg_82580 (struct e1000_hw*,int ,int ) ;
 int rd32 (int ) ;
 int usleep_range (int,int) ;
 int wr32 (int ,int) ;

s32 igb_pll_workaround_i210(struct e1000_hw *hw)
{
 s32 ret_val;
 u32 wuc, mdicnfg, ctrl, ctrl_ext, reg_val;
 u16 nvm_word, phy_word, pci_word, tmp_nvm;
 int i;


 wuc = rd32(E1000_WUC);
 mdicnfg = rd32(E1000_MDICNFG);
 reg_val = mdicnfg & ~E1000_MDICNFG_EXT_MDIO;
 wr32(E1000_MDICNFG, reg_val);


 ret_val = igb_read_invm_word_i210(hw, E1000_INVM_AUTOLOAD,
       &nvm_word);
 if (ret_val)
  nvm_word = E1000_INVM_DEFAULT_AL;
 tmp_nvm = nvm_word | E1000_INVM_PLL_WO_VAL;
 igb_write_phy_reg_82580(hw, I347AT4_PAGE_SELECT, E1000_PHY_PLL_FREQ_PAGE);
 phy_word = E1000_PHY_PLL_UNCONF;
 for (i = 0; i < E1000_MAX_PLL_TRIES; i++) {

  igb_read_phy_reg_82580(hw, E1000_PHY_PLL_FREQ_REG, &phy_word);
  if ((phy_word & E1000_PHY_PLL_UNCONF)
      != E1000_PHY_PLL_UNCONF) {
   ret_val = 0;
   break;
  } else {
   ret_val = -E1000_ERR_PHY;
  }

  ctrl = rd32(E1000_CTRL);
  wr32(E1000_CTRL, ctrl|E1000_CTRL_PHY_RST);

  ctrl_ext = rd32(E1000_CTRL_EXT);
  ctrl_ext |= (E1000_CTRL_EXT_PHYPDEN | E1000_CTRL_EXT_SDLPE);
  wr32(E1000_CTRL_EXT, ctrl_ext);

  wr32(E1000_WUC, 0);
  reg_val = (E1000_INVM_AUTOLOAD << 4) | (tmp_nvm << 16);
  wr32(E1000_EEARBC_I210, reg_val);

  igb_read_pci_cfg(hw, E1000_PCI_PMCSR, &pci_word);
  pci_word |= E1000_PCI_PMCSR_D3;
  igb_write_pci_cfg(hw, E1000_PCI_PMCSR, &pci_word);
  usleep_range(1000, 2000);
  pci_word &= ~E1000_PCI_PMCSR_D3;
  igb_write_pci_cfg(hw, E1000_PCI_PMCSR, &pci_word);
  reg_val = (E1000_INVM_AUTOLOAD << 4) | (nvm_word << 16);
  wr32(E1000_EEARBC_I210, reg_val);


  wr32(E1000_WUC, wuc);
 }
 igb_write_phy_reg_82580(hw, I347AT4_PAGE_SELECT, 0);

 wr32(E1000_MDICNFG, mdicnfg);
 return ret_val;
}
