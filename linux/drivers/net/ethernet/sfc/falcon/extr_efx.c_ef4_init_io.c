
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct ef4_nic {struct pci_dev* pci_dev; scalar_t__ membase_phys; int membase; int net_dev; TYPE_1__* type; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int max_dma_mask; unsigned int (* mem_map_size ) (struct ef4_nic*) ;int mem_bar; } ;


 int EIO ;
 int ENOMEM ;
 int dma_set_mask_and_coherent (int *,int) ;
 int ioremap_nocache (scalar_t__,unsigned int) ;
 int netif_dbg (struct ef4_nic*,int ,int ,char*,...) ;
 int netif_err (struct ef4_nic*,int ,int ,char*,...) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_release_region (struct pci_dev*,int) ;
 int pci_request_region (struct pci_dev*,int,char*) ;
 scalar_t__ pci_resource_start (struct pci_dev*,int) ;
 int pci_set_master (struct pci_dev*) ;
 int probe ;
 unsigned int stub1 (struct ef4_nic*) ;

__attribute__((used)) static int ef4_init_io(struct ef4_nic *efx)
{
 struct pci_dev *pci_dev = efx->pci_dev;
 dma_addr_t dma_mask = efx->type->max_dma_mask;
 unsigned int mem_map_size = efx->type->mem_map_size(efx);
 int rc, bar;

 netif_dbg(efx, probe, efx->net_dev, "initialising I/O\n");

 bar = efx->type->mem_bar;

 rc = pci_enable_device(pci_dev);
 if (rc) {
  netif_err(efx, probe, efx->net_dev,
     "failed to enable PCI device\n");
  goto fail1;
 }

 pci_set_master(pci_dev);





 while (dma_mask > 0x7fffffffUL) {
  rc = dma_set_mask_and_coherent(&pci_dev->dev, dma_mask);
  if (rc == 0)
   break;
  dma_mask >>= 1;
 }
 if (rc) {
  netif_err(efx, probe, efx->net_dev,
     "could not find a suitable DMA mask\n");
  goto fail2;
 }
 netif_dbg(efx, probe, efx->net_dev,
    "using DMA mask %llx\n", (unsigned long long) dma_mask);

 efx->membase_phys = pci_resource_start(efx->pci_dev, bar);
 rc = pci_request_region(pci_dev, bar, "sfc");
 if (rc) {
  netif_err(efx, probe, efx->net_dev,
     "request for memory BAR failed\n");
  rc = -EIO;
  goto fail3;
 }
 efx->membase = ioremap_nocache(efx->membase_phys, mem_map_size);
 if (!efx->membase) {
  netif_err(efx, probe, efx->net_dev,
     "could not map memory BAR at %llx+%x\n",
     (unsigned long long)efx->membase_phys, mem_map_size);
  rc = -ENOMEM;
  goto fail4;
 }
 netif_dbg(efx, probe, efx->net_dev,
    "memory BAR at %llx+%x (virtual %p)\n",
    (unsigned long long)efx->membase_phys, mem_map_size,
    efx->membase);

 return 0;

 fail4:
 pci_release_region(efx->pci_dev, bar);
 fail3:
 efx->membase_phys = 0;
 fail2:
 pci_disable_device(efx->pci_dev);
 fail1:
 return rc;
}
