
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct xgbe_prv_data {int isr_as_tasklet; int irq_count; unsigned int channel_irq_count; int per_channel_irq; TYPE_1__* pcidev; int dev; int channel_irq_mode; void** channel_irq; void* an_irq; void* i2c_irq; void* ecc_irq; void* dev_irq; int tx_ring_count; int rx_ring_count; } ;
struct TYPE_3__ {scalar_t__ msix_enabled; } ;


 int PCI_IRQ_MSI ;
 int PCI_IRQ_MSIX ;
 int XGBE_IRQ_MODE_LEVEL ;
 unsigned int XGBE_MSI_BASE_COUNT ;
 int XGBE_MSI_MIN_COUNT ;
 int dev_dbg (int ,char*,char*) ;
 int dev_info (int ,char*) ;
 scalar_t__ max (int ,int ) ;
 scalar_t__ netif_msg_probe (struct xgbe_prv_data*) ;
 int pci_alloc_irq_vectors (TYPE_1__*,int ,unsigned int,int) ;
 void* pci_irq_vector (TYPE_1__*,unsigned int) ;

__attribute__((used)) static int xgbe_config_multi_msi(struct xgbe_prv_data *pdata)
{
 unsigned int vector_count;
 unsigned int i, j;
 int ret;

 vector_count = XGBE_MSI_BASE_COUNT;
 vector_count += max(pdata->rx_ring_count,
       pdata->tx_ring_count);

 ret = pci_alloc_irq_vectors(pdata->pcidev, XGBE_MSI_MIN_COUNT,
        vector_count, PCI_IRQ_MSI | PCI_IRQ_MSIX);
 if (ret < 0) {
  dev_info(pdata->dev, "multi MSI/MSI-X enablement failed\n");
  return ret;
 }

 pdata->isr_as_tasklet = 1;
 pdata->irq_count = ret;

 pdata->dev_irq = pci_irq_vector(pdata->pcidev, 0);
 pdata->ecc_irq = pci_irq_vector(pdata->pcidev, 1);
 pdata->i2c_irq = pci_irq_vector(pdata->pcidev, 2);
 pdata->an_irq = pci_irq_vector(pdata->pcidev, 3);

 for (i = XGBE_MSI_BASE_COUNT, j = 0; i < ret; i++, j++)
  pdata->channel_irq[j] = pci_irq_vector(pdata->pcidev, i);
 pdata->channel_irq_count = j;

 pdata->per_channel_irq = 1;
 pdata->channel_irq_mode = XGBE_IRQ_MODE_LEVEL;

 if (netif_msg_probe(pdata))
  dev_dbg(pdata->dev, "multi %s interrupts enabled\n",
   pdata->pcidev->msix_enabled ? "MSI-X" : "MSI");

 return 0;
}
