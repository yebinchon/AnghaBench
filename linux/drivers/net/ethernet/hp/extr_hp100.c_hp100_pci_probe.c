
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; } ;
struct net_device {int name; } ;
struct hp100_private {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 int HP100_BUS_PCI ;
 int PCI_COMMAND ;
 int PCI_COMMAND_IO ;
 int PCI_COMMAND_MASTER ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 struct net_device* alloc_etherdev (int) ;
 int free_netdev (struct net_device*) ;
 int hp100_probe1 (struct net_device*,int,int ,struct pci_dev*) ;
 int pci_disable_device (struct pci_dev*) ;
 scalar_t__ pci_enable_device (struct pci_dev*) ;
 int pci_read_config_word (struct pci_dev*,int ,int*) ;
 int pci_resource_start (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct net_device*) ;
 int pci_write_config_word (struct pci_dev*,int ,int) ;
 int printk (char*,int ,...) ;

__attribute__((used)) static int hp100_pci_probe(struct pci_dev *pdev,
      const struct pci_device_id *ent)
{
 struct net_device *dev;
 int ioaddr;
 u_short pci_command;
 int err;

 if (pci_enable_device(pdev))
  return -ENODEV;

 dev = alloc_etherdev(sizeof(struct hp100_private));
 if (!dev) {
  err = -ENOMEM;
  goto out0;
 }

 SET_NETDEV_DEV(dev, &pdev->dev);

 pci_read_config_word(pdev, PCI_COMMAND, &pci_command);
 if (!(pci_command & PCI_COMMAND_IO)) {



  pci_command |= PCI_COMMAND_IO;
  pci_write_config_word(pdev, PCI_COMMAND, pci_command);
 }

 if (!(pci_command & PCI_COMMAND_MASTER)) {



  pci_command |= PCI_COMMAND_MASTER;
  pci_write_config_word(pdev, PCI_COMMAND, pci_command);
 }

 ioaddr = pci_resource_start(pdev, 0);
 err = hp100_probe1(dev, ioaddr, HP100_BUS_PCI, pdev);
 if (err)
  goto out1;




 pci_set_drvdata(pdev, dev);
 return 0;
 out1:
 free_netdev(dev);
 out0:
 pci_disable_device(pdev);
 return err;
}
