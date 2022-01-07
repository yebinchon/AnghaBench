
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int u8 ;
typedef int dma_addr_t ;
struct TYPE_12__ {TYPE_4__* ehdr; } ;
struct TYPE_15__ {int PageNumber; int ExtPageLength; int action; int physAddr; TYPE_1__ cfghdr; int PageVersion; int ExtPageType; int PageType; int timeout; } ;
struct TYPE_14__ {int device_missing_delay; int pcidev; int io_missing_delay; } ;
struct TYPE_13__ {int ReportDeviceMissingDelay; int IODeviceMissingDelay; } ;
typedef TYPE_2__ SasIOUnitPage1_t ;
typedef TYPE_3__ MPT_ADAPTER ;
typedef TYPE_4__ ConfigExtendedPageHeader_t ;
typedef TYPE_4__ CONFIGPARMS ;


 int ENOMEM ;
 int ENXIO ;
 int MPI_CONFIG_ACTION_PAGE_HEADER ;
 int MPI_CONFIG_ACTION_PAGE_READ_CURRENT ;
 int MPI_CONFIG_EXTPAGETYPE_SAS_IO_UNIT ;
 int MPI_CONFIG_PAGETYPE_EXTENDED ;
 int MPI_SASIOUNITPAGE1_PAGEVERSION ;
 int MPI_SAS_IOUNIT1_REPORT_MISSING_TIMEOUT_MASK ;
 int MPI_SAS_IOUNIT1_REPORT_MISSING_UNIT_16 ;
 int SAS_CONFIG_PAGE_TIMEOUT ;
 int le16_to_cpu (int ) ;
 int memset (TYPE_4__*,int ,int) ;
 int mpt_config (TYPE_3__*,TYPE_4__*) ;
 TYPE_2__* pci_alloc_consistent (int ,int,int *) ;
 int pci_free_consistent (int ,int,TYPE_2__*,int ) ;

__attribute__((used)) static int
mptsas_sas_io_unit_pg1(MPT_ADAPTER *ioc)
{
 ConfigExtendedPageHeader_t hdr;
 CONFIGPARMS cfg;
 SasIOUnitPage1_t *buffer;
 dma_addr_t dma_handle;
 int error;
 u8 device_missing_delay;

 memset(&hdr, 0, sizeof(ConfigExtendedPageHeader_t));
 memset(&cfg, 0, sizeof(CONFIGPARMS));

 cfg.cfghdr.ehdr = &hdr;
 cfg.action = MPI_CONFIG_ACTION_PAGE_HEADER;
 cfg.timeout = SAS_CONFIG_PAGE_TIMEOUT;
 cfg.cfghdr.ehdr->PageType = MPI_CONFIG_PAGETYPE_EXTENDED;
 cfg.cfghdr.ehdr->ExtPageType = MPI_CONFIG_EXTPAGETYPE_SAS_IO_UNIT;
 cfg.cfghdr.ehdr->PageVersion = MPI_SASIOUNITPAGE1_PAGEVERSION;
 cfg.cfghdr.ehdr->PageNumber = 1;

 error = mpt_config(ioc, &cfg);
 if (error)
  goto out;
 if (!hdr.ExtPageLength) {
  error = -ENXIO;
  goto out;
 }

 buffer = pci_alloc_consistent(ioc->pcidev, hdr.ExtPageLength * 4,
         &dma_handle);
 if (!buffer) {
  error = -ENOMEM;
  goto out;
 }

 cfg.physAddr = dma_handle;
 cfg.action = MPI_CONFIG_ACTION_PAGE_READ_CURRENT;

 error = mpt_config(ioc, &cfg);
 if (error)
  goto out_free_consistent;

 ioc->io_missing_delay =
     le16_to_cpu(buffer->IODeviceMissingDelay);
 device_missing_delay = buffer->ReportDeviceMissingDelay;
 ioc->device_missing_delay = (device_missing_delay & MPI_SAS_IOUNIT1_REPORT_MISSING_UNIT_16) ?
     (device_missing_delay & MPI_SAS_IOUNIT1_REPORT_MISSING_TIMEOUT_MASK) * 16 :
     device_missing_delay & MPI_SAS_IOUNIT1_REPORT_MISSING_TIMEOUT_MASK;

 out_free_consistent:
 pci_free_consistent(ioc->pcidev, hdr.ExtPageLength * 4,
       buffer, dma_handle);
 out:
 return error;
}
