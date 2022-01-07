
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int dummy; } ;
struct lpc_ich_priv {size_t chipset; int abase_save; int actrl_pbase_save; int actrl_pbase; int abase; } ;
struct TYPE_2__ {int iTCO_version; } ;


 TYPE_1__* lpc_chipset_info ;
 struct lpc_ich_priv* pci_get_drvdata (struct pci_dev*) ;
 int pci_read_config_byte (struct pci_dev*,int ,int*) ;
 int pci_write_config_byte (struct pci_dev*,int ,int) ;

__attribute__((used)) static void lpc_ich_enable_acpi_space(struct pci_dev *dev)
{
 struct lpc_ich_priv *priv = pci_get_drvdata(dev);
 u8 reg_save;

 switch (lpc_chipset_info[priv->chipset].iTCO_version) {
 case 3:




  pci_read_config_byte(dev, priv->abase, &reg_save);
  pci_write_config_byte(dev, priv->abase, reg_save | 0x2);
  priv->abase_save = reg_save;
  break;
 default:




  pci_read_config_byte(dev, priv->actrl_pbase, &reg_save);
  pci_write_config_byte(dev, priv->actrl_pbase, reg_save | 0x80);
  priv->actrl_pbase_save = reg_save;
  break;
 }
}
