
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;
struct lpc_ich_priv {int gctrl_save; int gctrl; } ;


 struct lpc_ich_priv* pci_get_drvdata (struct pci_dev*) ;
 int pci_read_config_byte (struct pci_dev*,int ,int*) ;
 int pci_write_config_byte (struct pci_dev*,int ,int) ;

__attribute__((used)) static void lpc_ich_enable_gpio_space(struct pci_dev *dev)
{
 struct lpc_ich_priv *priv = pci_get_drvdata(dev);
 u8 reg_save;

 pci_read_config_byte(dev, priv->gctrl, &reg_save);
 pci_write_config_byte(dev, priv->gctrl, reg_save | 0x10);
 priv->gctrl_save = reg_save;
}
