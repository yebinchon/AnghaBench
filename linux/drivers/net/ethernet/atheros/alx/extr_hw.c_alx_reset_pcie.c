
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct alx_hw {int pdev; } ;


 int ALX_MASTER ;
 int ALX_MASTER_PCLKSEL_SRDS ;
 int ALX_MASTER_WAKEN_25M ;
 int ALX_PCI_CMD ;
 int ALX_PDLL_TRNS1 ;
 int ALX_PDLL_TRNS1_D3PLLOFF_EN ;
 int ALX_UE_SVRT ;
 int ALX_UE_SVRT_DLPROTERR ;
 int ALX_UE_SVRT_FCPROTERR ;
 int ALX_WOL0 ;
 int PCI_COMMAND ;
 int PCI_COMMAND_INTX_DISABLE ;
 int alx_enable_aspm (struct alx_hw*,int,int) ;
 int alx_hw_revision (struct alx_hw*) ;
 scalar_t__ alx_hw_with_cr (struct alx_hw*) ;
 scalar_t__ alx_is_rev_a (int ) ;
 int alx_read_mem32 (struct alx_hw*,int ) ;
 int alx_write_mem32 (struct alx_hw*,int ,int) ;
 int pci_read_config_word (int ,int ,int*) ;
 int pci_write_config_word (int ,int ,int) ;
 int udelay (int) ;

void alx_reset_pcie(struct alx_hw *hw)
{
 u8 rev = alx_hw_revision(hw);
 u32 val;
 u16 val16;


 pci_read_config_word(hw->pdev, PCI_COMMAND, &val16);
 if (!(val16 & ALX_PCI_CMD) || (val16 & PCI_COMMAND_INTX_DISABLE)) {
  val16 = (val16 | ALX_PCI_CMD) & ~PCI_COMMAND_INTX_DISABLE;
  pci_write_config_word(hw->pdev, PCI_COMMAND, val16);
 }


 val = alx_read_mem32(hw, ALX_WOL0);
 alx_write_mem32(hw, ALX_WOL0, 0);

 val = alx_read_mem32(hw, ALX_PDLL_TRNS1);
 alx_write_mem32(hw, ALX_PDLL_TRNS1, val & ~ALX_PDLL_TRNS1_D3PLLOFF_EN);


 val = alx_read_mem32(hw, ALX_UE_SVRT);
 val &= ~(ALX_UE_SVRT_DLPROTERR | ALX_UE_SVRT_FCPROTERR);
 alx_write_mem32(hw, ALX_UE_SVRT, val);


 val = alx_read_mem32(hw, ALX_MASTER);
 if (alx_is_rev_a(rev) && alx_hw_with_cr(hw)) {
  if ((val & ALX_MASTER_WAKEN_25M) == 0 ||
      (val & ALX_MASTER_PCLKSEL_SRDS) == 0)
   alx_write_mem32(hw, ALX_MASTER,
     val | ALX_MASTER_PCLKSEL_SRDS |
     ALX_MASTER_WAKEN_25M);
 } else {
  if ((val & ALX_MASTER_WAKEN_25M) == 0 ||
      (val & ALX_MASTER_PCLKSEL_SRDS) != 0)
   alx_write_mem32(hw, ALX_MASTER,
     (val & ~ALX_MASTER_PCLKSEL_SRDS) |
     ALX_MASTER_WAKEN_25M);
 }


 alx_enable_aspm(hw, 1, 1);

 udelay(10);
}
