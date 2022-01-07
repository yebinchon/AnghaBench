
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {size_t driver_data; } ;
struct pci_dev {scalar_t__ error_state; int dev; } ;
struct net_device {int dev_addr; } ;
struct fm10k_intfc {scalar_t__ uc_addr; scalar_t__ sw_addr; int state; struct pci_dev* pdev; int service_timer; int macvlan_task; int service_task; struct net_device* netdev; } ;


 int DMA_BIT_MASK (int) ;
 int EIO ;
 int ENOMEM ;
 int FM10K_UC_ADDR_SIZE ;
 int HZ ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_WORK (int *,int ) ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 int __FM10K_SERVICE_DISABLE ;
 int clear_bit (int ,int ) ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,int ) ;
 int dma_set_mask_and_coherent (int *,int ) ;
 struct net_device* fm10k_alloc_netdev (int ) ;
 int fm10k_clear_queueing_scheme (struct fm10k_intfc*) ;
 int fm10k_dbg_intfc_init (struct fm10k_intfc*) ;
 int fm10k_driver_name ;
 int fm10k_hw_ready (struct fm10k_intfc*) ;
 int * fm10k_info_tbl ;
 int fm10k_init_queueing_scheme (struct fm10k_intfc*) ;
 int fm10k_iov_configure (struct pci_dev*,int ) ;
 int fm10k_macvlan_task ;
 int fm10k_mbx_free_irq (struct fm10k_intfc*) ;
 int fm10k_mbx_request_irq (struct fm10k_intfc*) ;
 int fm10k_service_event_schedule (struct fm10k_intfc*) ;
 int fm10k_service_task ;
 int fm10k_service_timer ;
 int fm10k_sw_init (struct fm10k_intfc*,struct pci_device_id const*) ;
 int free_netdev (struct net_device*) ;
 scalar_t__ ioremap (int ,int ) ;
 int iounmap (scalar_t__) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 struct fm10k_intfc* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_tx_stop_all_queues (struct net_device*) ;
 scalar_t__ pci_channel_io_normal ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device_mem (struct pci_dev*) ;
 int pci_enable_pcie_error_reporting (struct pci_dev*) ;
 int pci_release_mem_regions (struct pci_dev*) ;
 int pci_request_mem_regions (struct pci_dev*,int ) ;
 int pci_resource_start (struct pci_dev*,int ) ;
 int pci_save_state (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,struct fm10k_intfc*) ;
 int pci_set_master (struct pci_dev*) ;
 int pcie_print_link_status (struct pci_dev*) ;
 int register_netdev (struct net_device*) ;
 int set_bit (int ,int ) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int fm10k_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
{
 struct net_device *netdev;
 struct fm10k_intfc *interface;
 int err;

 if (pdev->error_state != pci_channel_io_normal) {
  dev_err(&pdev->dev,
   "PCI device still in an error state. Unable to load...\n");
  return -EIO;
 }

 err = pci_enable_device_mem(pdev);
 if (err) {
  dev_err(&pdev->dev,
   "PCI enable device failed: %d\n", err);
  return err;
 }

 err = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(48));
 if (err)
  err = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(32));
 if (err) {
  dev_err(&pdev->dev,
   "DMA configuration failed: %d\n", err);
  goto err_dma;
 }

 err = pci_request_mem_regions(pdev, fm10k_driver_name);
 if (err) {
  dev_err(&pdev->dev,
   "pci_request_selected_regions failed: %d\n", err);
  goto err_pci_reg;
 }

 pci_enable_pcie_error_reporting(pdev);

 pci_set_master(pdev);
 pci_save_state(pdev);

 netdev = fm10k_alloc_netdev(fm10k_info_tbl[ent->driver_data]);
 if (!netdev) {
  err = -ENOMEM;
  goto err_alloc_netdev;
 }

 SET_NETDEV_DEV(netdev, &pdev->dev);

 interface = netdev_priv(netdev);
 pci_set_drvdata(pdev, interface);

 interface->netdev = netdev;
 interface->pdev = pdev;

 interface->uc_addr = ioremap(pci_resource_start(pdev, 0),
         FM10K_UC_ADDR_SIZE);
 if (!interface->uc_addr) {
  err = -EIO;
  goto err_ioremap;
 }

 err = fm10k_sw_init(interface, ent);
 if (err)
  goto err_sw_init;


 fm10k_dbg_intfc_init(interface);

 err = fm10k_init_queueing_scheme(interface);
 if (err)
  goto err_sw_init;





 set_bit(__FM10K_SERVICE_DISABLE, interface->state);

 err = fm10k_mbx_request_irq(interface);
 if (err)
  goto err_mbx_interrupt;


 err = fm10k_hw_ready(interface);
 if (err)
  goto err_register;

 err = register_netdev(netdev);
 if (err)
  goto err_register;


 netif_carrier_off(netdev);


 netif_tx_stop_all_queues(netdev);




 timer_setup(&interface->service_timer, fm10k_service_timer, 0);
 INIT_WORK(&interface->service_task, fm10k_service_task);


 INIT_DELAYED_WORK(&interface->macvlan_task, fm10k_macvlan_task);


 mod_timer(&interface->service_timer, (HZ * 2) + jiffies);


 pcie_print_link_status(interface->pdev);


 dev_info(&pdev->dev, "%pM\n", netdev->dev_addr);


 fm10k_iov_configure(pdev, 0);


 clear_bit(__FM10K_SERVICE_DISABLE, interface->state);
 fm10k_service_event_schedule(interface);

 return 0;

err_register:
 fm10k_mbx_free_irq(interface);
err_mbx_interrupt:
 fm10k_clear_queueing_scheme(interface);
err_sw_init:
 if (interface->sw_addr)
  iounmap(interface->sw_addr);
 iounmap(interface->uc_addr);
err_ioremap:
 free_netdev(netdev);
err_alloc_netdev:
 pci_release_mem_regions(pdev);
err_pci_reg:
err_dma:
 pci_disable_device(pdev);
 return err;
}
