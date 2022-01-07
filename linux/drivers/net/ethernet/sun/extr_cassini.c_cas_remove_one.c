
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct cas_init_block {int dummy; } ;
struct cas {int regs; int block_dvma; int init_block; scalar_t__ orig_cacheline_size; int pm_mutex; scalar_t__ hw_running; int reset_task; int fw_data; } ;


 int PCI_CACHE_LINE_SIZE ;
 int cancel_work_sync (int *) ;
 int cas_shutdown (struct cas*) ;
 int free_netdev (struct net_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct cas* netdev_priv (struct net_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_free_consistent (struct pci_dev*,int,int ,int ) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_write_config_byte (struct pci_dev*,int ,scalar_t__) ;
 int unregister_netdev (struct net_device*) ;
 int vfree (int ) ;

__attribute__((used)) static void cas_remove_one(struct pci_dev *pdev)
{
 struct net_device *dev = pci_get_drvdata(pdev);
 struct cas *cp;
 if (!dev)
  return;

 cp = netdev_priv(dev);
 unregister_netdev(dev);

 vfree(cp->fw_data);

 mutex_lock(&cp->pm_mutex);
 cancel_work_sync(&cp->reset_task);
 if (cp->hw_running)
  cas_shutdown(cp);
 mutex_unlock(&cp->pm_mutex);


 if (cp->orig_cacheline_size) {



  pci_write_config_byte(pdev, PCI_CACHE_LINE_SIZE,
          cp->orig_cacheline_size);
 }

 pci_free_consistent(pdev, sizeof(struct cas_init_block),
       cp->init_block, cp->block_dvma);
 pci_iounmap(pdev, cp->regs);
 free_netdev(dev);
 pci_release_regions(pdev);
 pci_disable_device(pdev);
}
