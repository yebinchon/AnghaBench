
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int modtype; int priv; } ;


 int AEL2005_GPIO_CTRL ;
 int AEL2005_GPIO_STAT ;
 unsigned int AEL2005_MODDET_IRQ ;
 int MDIO_MMD_PMAPMD ;
 int ael2005_get_module_type (struct cphy*,int) ;
 int ael2005_reset (struct cphy*,int ) ;
 int cphy_cause_link_change ;
 int cphy_cause_module_change ;
 int edc_sr ;
 int edc_twinax ;
 int phy_modtype_none ;
 int phy_modtype_twinax ;
 int phy_modtype_twinax_long ;
 int t3_mdio_read (struct cphy*,int ,int ,unsigned int*) ;
 int t3_mdio_write (struct cphy*,int ,int ,int) ;
 int t3_phy_lasi_intr_handler (struct cphy*) ;

__attribute__((used)) static int ael2005_intr_handler(struct cphy *phy)
{
 unsigned int stat;
 int ret, edc_needed, cause = 0;

 ret = t3_mdio_read(phy, MDIO_MMD_PMAPMD, AEL2005_GPIO_STAT, &stat);
 if (ret)
  return ret;

 if (stat & AEL2005_MODDET_IRQ) {
  ret = t3_mdio_write(phy, MDIO_MMD_PMAPMD, AEL2005_GPIO_CTRL,
        0xd00);
  if (ret)
   return ret;


  ret = ael2005_get_module_type(phy, 300);
  if (ret < 0)
   return ret;

  phy->modtype = ret;
  if (ret == phy_modtype_none)
   edc_needed = phy->priv;
  else if (ret == phy_modtype_twinax ||
    ret == phy_modtype_twinax_long)
   edc_needed = edc_twinax;
  else
   edc_needed = edc_sr;

  if (edc_needed != phy->priv) {
   ret = ael2005_reset(phy, 0);
   return ret ? ret : cphy_cause_module_change;
  }
  cause = cphy_cause_module_change;
 }

 ret = t3_phy_lasi_intr_handler(phy);
 if (ret < 0)
  return ret;

 ret |= cause;
 return ret ? ret : cphy_cause_link_change;
}
