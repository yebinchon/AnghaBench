
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmxnet3_adapter {int num_tx_queues; int adapter_pa; TYPE_1__* pdev; int shared_pa; int shared; int queue_desc_pa; int tqd_start; int pm_conf_pa; int pm_conf; int rss_conf_pa; int rss_conf; int coal_conf_pa; int coal_conf; int work; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct Vmxnet3_TxQueueDesc {int dummy; } ;
struct Vmxnet3_RxQueueDesc {int dummy; } ;
struct Vmxnet3_PMConf {int dummy; } ;
struct Vmxnet3_DriverShared {int dummy; } ;
struct Vmxnet3_CoalesceScheme {int dummy; } ;
struct UPT1_RSSConf {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int PCI_DMA_TODEVICE ;
 int VMXNET3_DEVICE_MAX_RX_QUEUES ;
 scalar_t__ VMXNET3_VERSION_GE_3 (struct vmxnet3_adapter*) ;
 int cancel_work_sync (int *) ;
 int dma_free_coherent (int *,int,int ,int ) ;
 int dma_unmap_single (int *,int ,int,int ) ;
 scalar_t__ enable_mq ;
 int free_netdev (struct net_device*) ;
 int min (int ,int) ;
 struct vmxnet3_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ num_online_cpus () ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int rounddown_pow_of_two (int) ;
 int unregister_netdev (struct net_device*) ;
 int vmxnet3_free_intr_resources (struct vmxnet3_adapter*) ;
 int vmxnet3_free_pci_resources (struct vmxnet3_adapter*) ;

__attribute__((used)) static void
vmxnet3_remove_device(struct pci_dev *pdev)
{
 struct net_device *netdev = pci_get_drvdata(pdev);
 struct vmxnet3_adapter *adapter = netdev_priv(netdev);
 int size = 0;
 int num_rx_queues;







  num_rx_queues = 1;
 num_rx_queues = rounddown_pow_of_two(num_rx_queues);

 cancel_work_sync(&adapter->work);

 unregister_netdev(netdev);

 vmxnet3_free_intr_resources(adapter);
 vmxnet3_free_pci_resources(adapter);
 if (VMXNET3_VERSION_GE_3(adapter)) {
  dma_free_coherent(&adapter->pdev->dev,
      sizeof(struct Vmxnet3_CoalesceScheme),
      adapter->coal_conf, adapter->coal_conf_pa);
 }




 dma_free_coherent(&adapter->pdev->dev, sizeof(struct Vmxnet3_PMConf),
     adapter->pm_conf, adapter->pm_conf_pa);

 size = sizeof(struct Vmxnet3_TxQueueDesc) * adapter->num_tx_queues;
 size += sizeof(struct Vmxnet3_RxQueueDesc) * num_rx_queues;
 dma_free_coherent(&adapter->pdev->dev, size, adapter->tqd_start,
     adapter->queue_desc_pa);
 dma_free_coherent(&adapter->pdev->dev,
     sizeof(struct Vmxnet3_DriverShared),
     adapter->shared, adapter->shared_pa);
 dma_unmap_single(&adapter->pdev->dev, adapter->adapter_pa,
    sizeof(struct vmxnet3_adapter), PCI_DMA_TODEVICE);
 free_netdev(netdev);
}
