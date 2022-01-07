
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct lpc_ich_priv {int abase_save; int actrl_pbase_save; int gctrl_save; int gctrl; int actrl_pbase; int abase; } ;


 struct lpc_ich_priv* pci_get_drvdata (struct pci_dev*) ;
 int pci_write_config_byte (struct pci_dev*,int ,int) ;

__attribute__((used)) static void lpc_ich_restore_config_space(struct pci_dev *dev)
{
 struct lpc_ich_priv *priv = pci_get_drvdata(dev);

 if (priv->abase_save >= 0) {
  pci_write_config_byte(dev, priv->abase, priv->abase_save);
  priv->abase_save = -1;
 }

 if (priv->actrl_pbase_save >= 0) {
  pci_write_config_byte(dev, priv->actrl_pbase,
   priv->actrl_pbase_save);
  priv->actrl_pbase_save = -1;
 }

 if (priv->gctrl_save >= 0) {
  pci_write_config_byte(dev, priv->gctrl, priv->gctrl_save);
  priv->gctrl_save = -1;
 }
}
