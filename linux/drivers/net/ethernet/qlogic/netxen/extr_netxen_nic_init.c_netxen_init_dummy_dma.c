
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int u64 ;
typedef int u32 ;
struct TYPE_4__ {scalar_t__ phys_addr; int * addr; } ;
struct TYPE_5__ {int revision_id; } ;
struct netxen_adapter {TYPE_1__ dummy_dma; TYPE_3__* pdev; TYPE_2__ ahw; } ;
struct TYPE_6__ {int dev; } ;


 int CRB_HOST_DUMMY_BUF_ADDR_HI ;
 int CRB_HOST_DUMMY_BUF_ADDR_LO ;
 int ENOMEM ;
 int NETXEN_HOST_DUMMY_DMA_SIZE ;
 int NXWR32 (struct netxen_adapter*,int ,int) ;
 int NX_IS_REVISION_P2 (int ) ;
 int dev_err (int *,char*) ;
 int * pci_alloc_consistent (TYPE_3__*,int ,scalar_t__*) ;

int netxen_init_dummy_dma(struct netxen_adapter *adapter)
{
 u64 addr;
 u32 hi, lo;

 if (!NX_IS_REVISION_P2(adapter->ahw.revision_id))
  return 0;

 adapter->dummy_dma.addr = pci_alloc_consistent(adapter->pdev,
     NETXEN_HOST_DUMMY_DMA_SIZE,
     &adapter->dummy_dma.phys_addr);
 if (adapter->dummy_dma.addr == ((void*)0)) {
  dev_err(&adapter->pdev->dev,
   "ERROR: Could not allocate dummy DMA memory\n");
  return -ENOMEM;
 }

 addr = (uint64_t) adapter->dummy_dma.phys_addr;
 hi = (addr >> 32) & 0xffffffff;
 lo = addr & 0xffffffff;

 NXWR32(adapter, CRB_HOST_DUMMY_BUF_ADDR_HI, hi);
 NXWR32(adapter, CRB_HOST_DUMMY_BUF_ADDR_LO, lo);

 return 0;
}
