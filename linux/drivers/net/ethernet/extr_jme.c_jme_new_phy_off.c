
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct jme_adapter {int pdev; } ;


 int JME_PHY_PWR ;
 int PCI_PRIV_PE1 ;
 int PE1_GPREG0_PBG ;
 int PE1_GPREG0_PDD3COLD ;
 int PHY_PWR_CLKSEL ;
 int PHY_PWR_DWN1SEL ;
 int PHY_PWR_DWN1SW ;
 int PHY_PWR_DWN2 ;
 int jread32 (struct jme_adapter*,int ) ;
 int jwrite32 (struct jme_adapter*,int ,int) ;
 int pci_read_config_dword (int ,int ,int*) ;
 int pci_write_config_dword (int ,int ,int) ;

__attribute__((used)) static inline void
jme_new_phy_off(struct jme_adapter *jme)
{
 u32 reg;

 reg = jread32(jme, JME_PHY_PWR);
 reg |= PHY_PWR_DWN1SEL | PHY_PWR_DWN1SW |
        PHY_PWR_DWN2 | PHY_PWR_CLKSEL;
 jwrite32(jme, JME_PHY_PWR, reg);

 pci_read_config_dword(jme->pdev, PCI_PRIV_PE1, &reg);
 reg &= ~PE1_GPREG0_PBG;
 reg |= PE1_GPREG0_PDD3COLD;
 pci_write_config_dword(jme->pdev, PCI_PRIV_PE1, reg);
}
