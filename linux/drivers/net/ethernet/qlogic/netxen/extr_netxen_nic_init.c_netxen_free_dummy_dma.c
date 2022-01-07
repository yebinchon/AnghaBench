
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int * addr; int phys_addr; } ;
struct TYPE_5__ {int revision_id; } ;
struct netxen_adapter {TYPE_3__* pdev; TYPE_1__ dummy_dma; TYPE_2__ ahw; } ;
struct TYPE_6__ {int dev; } ;


 int NETXEN_DMA_WATCHDOG_CTRL ;
 int NETXEN_HOST_DUMMY_DMA_SIZE ;
 int NXRD32 (struct netxen_adapter*,int ) ;
 int NXWR32 (struct netxen_adapter*,int ,int) ;
 int NX_IS_REVISION_P2 (int ) ;
 int dev_err (int *,char*) ;
 int msleep (int) ;
 int pci_free_consistent (TYPE_3__*,int ,int *,int ) ;

void netxen_free_dummy_dma(struct netxen_adapter *adapter)
{
 int i = 100;
 u32 ctrl;

 if (!NX_IS_REVISION_P2(adapter->ahw.revision_id))
  return;

 if (!adapter->dummy_dma.addr)
  return;

 ctrl = NXRD32(adapter, NETXEN_DMA_WATCHDOG_CTRL);
 if ((ctrl & 0x1) != 0) {
  NXWR32(adapter, NETXEN_DMA_WATCHDOG_CTRL, (ctrl | 0x2));

  while ((ctrl & 0x1) != 0) {

   msleep(50);

   ctrl = NXRD32(adapter, NETXEN_DMA_WATCHDOG_CTRL);

   if (--i == 0)
    break;
  }
 }

 if (i) {
  pci_free_consistent(adapter->pdev,
       NETXEN_HOST_DUMMY_DMA_SIZE,
       adapter->dummy_dma.addr,
       adapter->dummy_dma.phys_addr);
  adapter->dummy_dma.addr = ((void*)0);
 } else
  dev_err(&adapter->pdev->dev, "dma_watchdog_shutdown failed\n");
}
