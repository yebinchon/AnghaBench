
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int notifier_call; } ;
struct TYPE_4__ {int id; } ;
struct rocker {int hw_addr; int rocker_owq; TYPE_2__ fib_nb; TYPE_1__ hw; int port_count; struct pci_dev* pdev; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int dev; } ;
struct notifier_block {int dummy; } ;


 int CONTROL ;
 int DMA_BIT_MASK (int) ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PORT_PHYS_COUNT ;
 int ROCKER_CONTROL_RESET ;
 int ROCKER_MSIX_VEC_CMD ;
 int ROCKER_MSIX_VEC_EVENT ;
 scalar_t__ ROCKER_PCI_BAR0_SIZE ;
 int SWITCH_ID ;
 int WQ_MEM_RECLAIM ;
 int alloc_ordered_workqueue (int ,int ) ;
 int destroy_workqueue (int ) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,int,int *) ;
 int free_irq (int ,struct rocker*) ;
 int ioremap (int ,scalar_t__) ;
 int iounmap (int ) ;
 int kfree (struct rocker*) ;
 struct rocker* kzalloc (int,int ) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,int ) ;
 scalar_t__ pci_resource_len (struct pci_dev*,int ) ;
 int pci_resource_start (struct pci_dev*,int ) ;
 int pci_set_consistent_dma_mask (struct pci_dev*,int ) ;
 int pci_set_dma_mask (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct rocker*) ;
 int pci_set_master (struct pci_dev*) ;
 int register_fib_notifier (TYPE_2__*,int *) ;
 int register_switchdev_blocking_notifier (struct notifier_block*) ;
 int register_switchdev_notifier (int *) ;
 int request_irq (int ,int ,int ,int ,struct rocker*) ;
 int rocker_basic_hw_test (struct rocker*) ;
 int rocker_cmd_irq_handler ;
 int rocker_dma_rings_fini (struct rocker*) ;
 int rocker_dma_rings_init (struct rocker*) ;
 int rocker_driver_name ;
 int rocker_event_irq_handler ;
 int rocker_msix_fini (struct rocker*) ;
 int rocker_msix_init (struct rocker*) ;
 int rocker_msix_vector (struct rocker*,int ) ;
 int rocker_probe_ports (struct rocker*) ;
 int rocker_read32 (struct rocker*,int ) ;
 int rocker_read64 (struct rocker*,int ) ;
 int rocker_remove_ports (struct rocker*) ;
 int rocker_router_fib_event ;
 struct notifier_block rocker_switchdev_blocking_notifier ;
 int rocker_switchdev_notifier ;
 int rocker_write32 (struct rocker*,int ,int ) ;
 int unregister_fib_notifier (TYPE_2__*) ;
 int unregister_switchdev_notifier (int *) ;

__attribute__((used)) static int rocker_probe(struct pci_dev *pdev, const struct pci_device_id *id)
{
 struct notifier_block *nb;
 struct rocker *rocker;
 int err;

 rocker = kzalloc(sizeof(*rocker), GFP_KERNEL);
 if (!rocker)
  return -ENOMEM;

 err = pci_enable_device(pdev);
 if (err) {
  dev_err(&pdev->dev, "pci_enable_device failed\n");
  goto err_pci_enable_device;
 }

 err = pci_request_regions(pdev, rocker_driver_name);
 if (err) {
  dev_err(&pdev->dev, "pci_request_regions failed\n");
  goto err_pci_request_regions;
 }

 err = pci_set_dma_mask(pdev, DMA_BIT_MASK(64));
 if (!err) {
  err = pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(64));
  if (err) {
   dev_err(&pdev->dev, "pci_set_consistent_dma_mask failed\n");
   goto err_pci_set_dma_mask;
  }
 } else {
  err = pci_set_dma_mask(pdev, DMA_BIT_MASK(32));
  if (err) {
   dev_err(&pdev->dev, "pci_set_dma_mask failed\n");
   goto err_pci_set_dma_mask;
  }
 }

 if (pci_resource_len(pdev, 0) < ROCKER_PCI_BAR0_SIZE) {
  dev_err(&pdev->dev, "invalid PCI region size\n");
  err = -EINVAL;
  goto err_pci_resource_len_check;
 }

 rocker->hw_addr = ioremap(pci_resource_start(pdev, 0),
      pci_resource_len(pdev, 0));
 if (!rocker->hw_addr) {
  dev_err(&pdev->dev, "ioremap failed\n");
  err = -EIO;
  goto err_ioremap;
 }
 pci_set_master(pdev);

 rocker->pdev = pdev;
 pci_set_drvdata(pdev, rocker);

 rocker->port_count = rocker_read32(rocker, PORT_PHYS_COUNT);

 err = rocker_msix_init(rocker);
 if (err) {
  dev_err(&pdev->dev, "MSI-X init failed\n");
  goto err_msix_init;
 }

 err = rocker_basic_hw_test(rocker);
 if (err) {
  dev_err(&pdev->dev, "basic hw test failed\n");
  goto err_basic_hw_test;
 }

 rocker_write32(rocker, CONTROL, ROCKER_CONTROL_RESET);

 err = rocker_dma_rings_init(rocker);
 if (err)
  goto err_dma_rings_init;

 err = request_irq(rocker_msix_vector(rocker, ROCKER_MSIX_VEC_CMD),
     rocker_cmd_irq_handler, 0,
     rocker_driver_name, rocker);
 if (err) {
  dev_err(&pdev->dev, "cannot assign cmd irq\n");
  goto err_request_cmd_irq;
 }

 err = request_irq(rocker_msix_vector(rocker, ROCKER_MSIX_VEC_EVENT),
     rocker_event_irq_handler, 0,
     rocker_driver_name, rocker);
 if (err) {
  dev_err(&pdev->dev, "cannot assign event irq\n");
  goto err_request_event_irq;
 }

 rocker->rocker_owq = alloc_ordered_workqueue(rocker_driver_name,
           WQ_MEM_RECLAIM);
 if (!rocker->rocker_owq) {
  err = -ENOMEM;
  goto err_alloc_ordered_workqueue;
 }

 err = rocker_probe_ports(rocker);
 if (err) {
  dev_err(&pdev->dev, "failed to probe ports\n");
  goto err_probe_ports;
 }




 rocker->fib_nb.notifier_call = rocker_router_fib_event;
 err = register_fib_notifier(&rocker->fib_nb, ((void*)0));
 if (err)
  goto err_register_fib_notifier;

 err = register_switchdev_notifier(&rocker_switchdev_notifier);
 if (err) {
  dev_err(&pdev->dev, "Failed to register switchdev notifier\n");
  goto err_register_switchdev_notifier;
 }

 nb = &rocker_switchdev_blocking_notifier;
 err = register_switchdev_blocking_notifier(nb);
 if (err) {
  dev_err(&pdev->dev, "Failed to register switchdev blocking notifier\n");
  goto err_register_switchdev_blocking_notifier;
 }

 rocker->hw.id = rocker_read64(rocker, SWITCH_ID);

 dev_info(&pdev->dev, "Rocker switch with id %*phN\n",
   (int)sizeof(rocker->hw.id), &rocker->hw.id);

 return 0;

err_register_switchdev_blocking_notifier:
 unregister_switchdev_notifier(&rocker_switchdev_notifier);
err_register_switchdev_notifier:
 unregister_fib_notifier(&rocker->fib_nb);
err_register_fib_notifier:
 rocker_remove_ports(rocker);
err_probe_ports:
 destroy_workqueue(rocker->rocker_owq);
err_alloc_ordered_workqueue:
 free_irq(rocker_msix_vector(rocker, ROCKER_MSIX_VEC_EVENT), rocker);
err_request_event_irq:
 free_irq(rocker_msix_vector(rocker, ROCKER_MSIX_VEC_CMD), rocker);
err_request_cmd_irq:
 rocker_dma_rings_fini(rocker);
err_dma_rings_init:
err_basic_hw_test:
 rocker_msix_fini(rocker);
err_msix_init:
 iounmap(rocker->hw_addr);
err_ioremap:
err_pci_resource_len_check:
err_pci_set_dma_mask:
 pci_release_regions(pdev);
err_pci_request_regions:
 pci_disable_device(pdev);
err_pci_enable_device:
 kfree(rocker);
 return err;
}
