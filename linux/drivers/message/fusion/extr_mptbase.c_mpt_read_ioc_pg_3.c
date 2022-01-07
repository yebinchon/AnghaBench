
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u8 ;
typedef int dma_addr_t ;
struct TYPE_9__ {TYPE_4__* hdr; } ;
struct TYPE_13__ {int physAddr; int action; scalar_t__ timeout; scalar_t__ dir; scalar_t__ pageAddr; TYPE_1__ cfghdr; } ;
struct TYPE_12__ {int PageLength; int PageNumber; int PageType; scalar_t__ PageVersion; } ;
struct TYPE_10__ {int * pIocPg3; } ;
struct TYPE_11__ {int pcidev; TYPE_2__ raid_data; } ;
typedef TYPE_3__ MPT_ADAPTER ;
typedef int IOCPage3_t ;
typedef TYPE_4__ ConfigPageHeader_t ;
typedef TYPE_5__ CONFIGPARMS ;


 int GFP_KERNEL ;
 int MPI_CONFIG_ACTION_PAGE_HEADER ;
 int MPI_CONFIG_ACTION_PAGE_READ_CURRENT ;
 int MPI_CONFIG_PAGETYPE_IOC ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 scalar_t__ mpt_config (TYPE_3__*,TYPE_5__*) ;
 int * pci_alloc_consistent (int ,int,int*) ;
 int pci_free_consistent (int ,int,int *,int) ;

__attribute__((used)) static int
mpt_read_ioc_pg_3(MPT_ADAPTER *ioc)
{
 IOCPage3_t *pIoc3;
 u8 *mem;
 CONFIGPARMS cfg;
 ConfigPageHeader_t header;
 dma_addr_t ioc3_dma;
 int iocpage3sz = 0;



 kfree(ioc->raid_data.pIocPg3);
 ioc->raid_data.pIocPg3 = ((void*)0);




 header.PageVersion = 0;
 header.PageLength = 0;
 header.PageNumber = 3;
 header.PageType = MPI_CONFIG_PAGETYPE_IOC;
 cfg.cfghdr.hdr = &header;
 cfg.physAddr = -1;
 cfg.pageAddr = 0;
 cfg.action = MPI_CONFIG_ACTION_PAGE_HEADER;
 cfg.dir = 0;
 cfg.timeout = 0;
 if (mpt_config(ioc, &cfg) != 0)
  return 0;

 if (header.PageLength == 0)
  return 0;



 iocpage3sz = header.PageLength * 4;
 pIoc3 = pci_alloc_consistent(ioc->pcidev, iocpage3sz, &ioc3_dma);
 if (!pIoc3)
  return 0;




 cfg.physAddr = ioc3_dma;
 cfg.action = MPI_CONFIG_ACTION_PAGE_READ_CURRENT;
 if (mpt_config(ioc, &cfg) == 0) {
  mem = kmalloc(iocpage3sz, GFP_KERNEL);
  if (mem) {
   memcpy(mem, (u8 *)pIoc3, iocpage3sz);
   ioc->raid_data.pIocPg3 = (IOCPage3_t *) mem;
  }
 }

 pci_free_consistent(ioc->pcidev, iocpage3sz, pIoc3, ioc3_dma);

 return 0;
}
