
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef void* dma_addr_t ;
struct TYPE_9__ {TYPE_4__* hdr; } ;
struct TYPE_13__ {int physAddr; int action; scalar_t__ timeout; scalar_t__ dir; scalar_t__ pageAddr; TYPE_1__ cfghdr; } ;
struct TYPE_12__ {int PageLength; int PageNumber; int PageType; scalar_t__ PageVersion; } ;
struct TYPE_10__ {int IocPg4Sz; int * pIocPg4; void* IocPg4_dma; } ;
struct TYPE_11__ {int alloc_total; TYPE_2__ spi_data; int pcidev; } ;
typedef TYPE_3__ MPT_ADAPTER ;
typedef int IOCPage4_t ;
typedef TYPE_4__ ConfigPageHeader_t ;
typedef TYPE_5__ CONFIGPARMS ;


 int MPI_CONFIG_ACTION_PAGE_HEADER ;
 int MPI_CONFIG_ACTION_PAGE_READ_CURRENT ;
 int MPI_CONFIG_PAGETYPE_IOC ;
 scalar_t__ mpt_config (TYPE_3__*,TYPE_5__*) ;
 int * pci_alloc_consistent (int ,int,void**) ;
 int pci_free_consistent (int ,int,int *,void*) ;

__attribute__((used)) static void
mpt_read_ioc_pg_4(MPT_ADAPTER *ioc)
{
 IOCPage4_t *pIoc4;
 CONFIGPARMS cfg;
 ConfigPageHeader_t header;
 dma_addr_t ioc4_dma;
 int iocpage4sz;



 header.PageVersion = 0;
 header.PageLength = 0;
 header.PageNumber = 4;
 header.PageType = MPI_CONFIG_PAGETYPE_IOC;
 cfg.cfghdr.hdr = &header;
 cfg.physAddr = -1;
 cfg.pageAddr = 0;
 cfg.action = MPI_CONFIG_ACTION_PAGE_HEADER;
 cfg.dir = 0;
 cfg.timeout = 0;
 if (mpt_config(ioc, &cfg) != 0)
  return;

 if (header.PageLength == 0)
  return;

 if ( (pIoc4 = ioc->spi_data.pIocPg4) == ((void*)0) ) {
  iocpage4sz = (header.PageLength + 4) * 4;
  pIoc4 = pci_alloc_consistent(ioc->pcidev, iocpage4sz, &ioc4_dma);
  if (!pIoc4)
   return;
  ioc->alloc_total += iocpage4sz;
 } else {
  ioc4_dma = ioc->spi_data.IocPg4_dma;
  iocpage4sz = ioc->spi_data.IocPg4Sz;
 }



 cfg.physAddr = ioc4_dma;
 cfg.action = MPI_CONFIG_ACTION_PAGE_READ_CURRENT;
 if (mpt_config(ioc, &cfg) == 0) {
  ioc->spi_data.pIocPg4 = (IOCPage4_t *) pIoc4;
  ioc->spi_data.IocPg4_dma = ioc4_dma;
  ioc->spi_data.IocPg4Sz = iocpage4sz;
 } else {
  pci_free_consistent(ioc->pcidev, iocpage4sz, pIoc4, ioc4_dma);
  ioc->spi_data.pIocPg4 = ((void*)0);
  ioc->alloc_total -= iocpage4sz;
 }
}
