
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_device_id {size_t driver_data; } ;
struct pci_dev {int dev; } ;
struct lpc_ich_priv {size_t chipset; int actrl_pbase_save; int abase_save; int gctrl_save; int gctrl; int gbase; int actrl_pbase; int abase; } ;
struct TYPE_2__ {scalar_t__ spi_type; scalar_t__ gpio_version; scalar_t__ iTCO_version; } ;


 int ACPIBASE ;
 int ACPICTRL_PMCBASE ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOBASE_ICH0 ;
 int GPIOBASE_ICH6 ;
 int GPIOCTRL_ICH0 ;
 int GPIOCTRL_ICH6 ;
 size_t LPC_ICH5 ;
 int dev_warn (int *,char*) ;
 struct lpc_ich_priv* devm_kzalloc (int *,int,int ) ;
 TYPE_1__* lpc_chipset_info ;
 int lpc_ich_init_gpio (struct pci_dev*) ;
 int lpc_ich_init_spi (struct pci_dev*) ;
 int lpc_ich_init_wdt (struct pci_dev*) ;
 int lpc_ich_restore_config_space (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,struct lpc_ich_priv*) ;

__attribute__((used)) static int lpc_ich_probe(struct pci_dev *dev,
    const struct pci_device_id *id)
{
 struct lpc_ich_priv *priv;
 int ret;
 bool cell_added = 0;

 priv = devm_kzalloc(&dev->dev,
       sizeof(struct lpc_ich_priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->chipset = id->driver_data;

 priv->actrl_pbase_save = -1;
 priv->abase_save = -1;

 priv->abase = ACPIBASE;
 priv->actrl_pbase = ACPICTRL_PMCBASE;

 priv->gctrl_save = -1;
 if (priv->chipset <= LPC_ICH5) {
  priv->gbase = GPIOBASE_ICH0;
  priv->gctrl = GPIOCTRL_ICH0;
 } else {
  priv->gbase = GPIOBASE_ICH6;
  priv->gctrl = GPIOCTRL_ICH6;
 }

 pci_set_drvdata(dev, priv);

 if (lpc_chipset_info[priv->chipset].iTCO_version) {
  ret = lpc_ich_init_wdt(dev);
  if (!ret)
   cell_added = 1;
 }

 if (lpc_chipset_info[priv->chipset].gpio_version) {
  ret = lpc_ich_init_gpio(dev);
  if (!ret)
   cell_added = 1;
 }

 if (lpc_chipset_info[priv->chipset].spi_type) {
  ret = lpc_ich_init_spi(dev);
  if (!ret)
   cell_added = 1;
 }





 if (!cell_added) {
  dev_warn(&dev->dev, "No MFD cells added\n");
  lpc_ich_restore_config_space(dev);
  return -ENODEV;
 }

 return 0;
}
