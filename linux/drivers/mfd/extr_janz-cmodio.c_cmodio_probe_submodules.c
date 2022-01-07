
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int irq; int dev; } ;
struct cmodio_device {int cells; struct pci_dev* pdev; } ;


 int ENODEV ;
 int cmodio_setup_subdevice (struct cmodio_device*,char*,unsigned int,int) ;
 int dev_dbg (int *,char*,int,char*) ;
 int dev_err (int *,char*) ;
 int mfd_add_devices (int *,int ,int ,unsigned int,int *,int ,int *) ;
 char** modules ;
 int num_modules ;
 int strcmp (char*,char*) ;

__attribute__((used)) static int cmodio_probe_submodules(struct cmodio_device *priv)
{
 struct pci_dev *pdev = priv->pdev;
 unsigned int num_probed = 0;
 char *name;
 int i;

 for (i = 0; i < num_modules; i++) {
  name = modules[i];
  if (!strcmp(name, "") || !strcmp(name, "empty"))
   continue;

  dev_dbg(&priv->pdev->dev, "MODULbus %d: name %s\n", i, name);
  cmodio_setup_subdevice(priv, name, num_probed, i);
  num_probed++;
 }


 if (num_probed == 0) {
  dev_err(&priv->pdev->dev, "no MODULbus modules specified, "
       "please set the ``modules'' kernel "
       "parameter according to your "
       "hardware configuration\n");
  return -ENODEV;
 }

 return mfd_add_devices(&pdev->dev, 0, priv->cells,
          num_probed, ((void*)0), pdev->irq, ((void*)0));
}
