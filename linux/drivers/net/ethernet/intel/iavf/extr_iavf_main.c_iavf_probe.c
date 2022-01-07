
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pci_device_id {int dummy; } ;
struct pci_dev {int devfn; TYPE_2__* bus; int subsystem_device; int subsystem_vendor; int device; int vendor; int dev; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {int arq_mutex; int asq_mutex; } ;
struct TYPE_4__ {int bus_id; int func; int device; } ;
struct iavf_hw {TYPE_3__ aq; TYPE_1__ bus; int subsystem_device_id; int subsystem_vendor_id; int revision_id; int device_id; int vendor_id; int hw_addr; struct iavf_adapter* back; } ;
struct iavf_adapter {int down_waitqueue; int init_task; int client_task; int watchdog_task; int adminq_task; int reset_task; int cloud_filter_list; int vlan_filter_list; int mac_filter_list; int cloud_filter_list_lock; int mac_vlan_list_lock; int state; scalar_t__ msg_enable; struct iavf_hw hw; struct pci_dev* pdev; struct net_device* netdev; } ;
struct TYPE_5__ {int number; } ;


 scalar_t__ BIT (int ) ;
 int DEFAULT_DEBUG_LEVEL_SHIFT ;
 int DMA_BIT_MASK (int) ;
 int EIO ;
 int ENOMEM ;
 int IAVF_MAX_REQ_QUEUES ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int PCI_FUNC (int) ;
 int PCI_REVISION_ID ;
 int PCI_SLOT (int) ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 int __IAVF_STARTUP ;
 struct net_device* alloc_etherdev_mq (int,int ) ;
 int dev_err (int *,char*,int) ;
 int dma_set_mask_and_coherent (int *,int ) ;
 int free_netdev (struct net_device*) ;
 int iavf_adminq_task ;
 int iavf_client_task ;
 int iavf_driver_name ;
 int iavf_init_task ;
 int iavf_reset_task ;
 int iavf_watchdog_task ;
 int iavf_wq ;
 int init_waitqueue_head (int *) ;
 int ioremap (int ,int ) ;
 int msecs_to_jiffies (int) ;
 int mutex_init (int *) ;
 struct iavf_adapter* netdev_priv (struct net_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_enable_pcie_error_reporting (struct pci_dev*) ;
 int pci_read_config_byte (struct pci_dev*,int ,int *) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,int ) ;
 int pci_resource_len (struct pci_dev*,int ) ;
 int pci_resource_start (struct pci_dev*,int ) ;
 int pci_save_state (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,struct net_device*) ;
 int pci_set_master (struct pci_dev*) ;
 int queue_delayed_work (int ,int *,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
{
 struct net_device *netdev;
 struct iavf_adapter *adapter = ((void*)0);
 struct iavf_hw *hw = ((void*)0);
 int err;

 err = pci_enable_device(pdev);
 if (err)
  return err;

 err = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(64));
 if (err) {
  err = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(32));
  if (err) {
   dev_err(&pdev->dev,
    "DMA configuration failed: 0x%x\n", err);
   goto err_dma;
  }
 }

 err = pci_request_regions(pdev, iavf_driver_name);
 if (err) {
  dev_err(&pdev->dev,
   "pci_request_regions failed 0x%x\n", err);
  goto err_pci_reg;
 }

 pci_enable_pcie_error_reporting(pdev);

 pci_set_master(pdev);

 netdev = alloc_etherdev_mq(sizeof(struct iavf_adapter),
       IAVF_MAX_REQ_QUEUES);
 if (!netdev) {
  err = -ENOMEM;
  goto err_alloc_etherdev;
 }

 SET_NETDEV_DEV(netdev, &pdev->dev);

 pci_set_drvdata(pdev, netdev);
 adapter = netdev_priv(netdev);

 adapter->netdev = netdev;
 adapter->pdev = pdev;

 hw = &adapter->hw;
 hw->back = adapter;

 adapter->msg_enable = BIT(DEFAULT_DEBUG_LEVEL_SHIFT) - 1;
 adapter->state = __IAVF_STARTUP;


 pci_save_state(pdev);

 hw->hw_addr = ioremap(pci_resource_start(pdev, 0),
         pci_resource_len(pdev, 0));
 if (!hw->hw_addr) {
  err = -EIO;
  goto err_ioremap;
 }
 hw->vendor_id = pdev->vendor;
 hw->device_id = pdev->device;
 pci_read_config_byte(pdev, PCI_REVISION_ID, &hw->revision_id);
 hw->subsystem_vendor_id = pdev->subsystem_vendor;
 hw->subsystem_device_id = pdev->subsystem_device;
 hw->bus.device = PCI_SLOT(pdev->devfn);
 hw->bus.func = PCI_FUNC(pdev->devfn);
 hw->bus.bus_id = pdev->bus->number;




 mutex_init(&hw->aq.asq_mutex);
 mutex_init(&hw->aq.arq_mutex);

 spin_lock_init(&adapter->mac_vlan_list_lock);
 spin_lock_init(&adapter->cloud_filter_list_lock);

 INIT_LIST_HEAD(&adapter->mac_filter_list);
 INIT_LIST_HEAD(&adapter->vlan_filter_list);
 INIT_LIST_HEAD(&adapter->cloud_filter_list);

 INIT_WORK(&adapter->reset_task, iavf_reset_task);
 INIT_WORK(&adapter->adminq_task, iavf_adminq_task);
 INIT_DELAYED_WORK(&adapter->watchdog_task, iavf_watchdog_task);
 INIT_DELAYED_WORK(&adapter->client_task, iavf_client_task);
 INIT_DELAYED_WORK(&adapter->init_task, iavf_init_task);
 queue_delayed_work(iavf_wq, &adapter->init_task,
      msecs_to_jiffies(5 * (pdev->devfn & 0x07)));


 init_waitqueue_head(&adapter->down_waitqueue);

 return 0;

err_ioremap:
 free_netdev(netdev);
err_alloc_etherdev:
 pci_release_regions(pdev);
err_pci_reg:
err_dma:
 pci_disable_device(pdev);
 return err;
}
