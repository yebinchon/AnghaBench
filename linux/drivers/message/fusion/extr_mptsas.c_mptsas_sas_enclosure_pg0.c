
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct mptsas_enclosure {int sep_channel; int sep_id; int start_channel; int start_id; void* start_slot; void* num_slot; void* flags; void* enclosure_handle; int enclosure_logical_id; } ;
typedef int hdr ;
typedef int dma_addr_t ;
typedef int __le64 ;
struct TYPE_12__ {TYPE_4__* ehdr; } ;
struct TYPE_16__ {int physAddr; int action; int timeout; scalar_t__ dir; scalar_t__ pageAddr; TYPE_1__ cfghdr; } ;
struct TYPE_15__ {int ExtPageLength; int ExtPageType; int PageType; scalar_t__ PageNumber; int PageVersion; } ;
struct TYPE_14__ {int pcidev; } ;
struct TYPE_13__ {int SEPBus; int SEPTargetID; int StartBus; int StartTargetID; int StartSlot; int NumSlots; int Flags; int EnclosureHandle; int EnclosureLogicalID; } ;
typedef TYPE_2__ SasEnclosurePage0_t ;
typedef TYPE_3__ MPT_ADAPTER ;
typedef TYPE_4__ ConfigExtendedPageHeader_t ;
typedef TYPE_5__ CONFIGPARMS ;


 int ENOMEM ;
 int ENXIO ;
 int MPI_CONFIG_ACTION_PAGE_HEADER ;
 int MPI_CONFIG_ACTION_PAGE_READ_CURRENT ;
 int MPI_CONFIG_EXTPAGETYPE_ENCLOSURE ;
 int MPI_CONFIG_PAGETYPE_EXTENDED ;
 int MPI_SASENCLOSURE0_PAGEVERSION ;
 int SAS_CONFIG_PAGE_TIMEOUT ;
 void* le16_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 int memcpy (int *,int *,int) ;
 int memset (TYPE_4__*,int ,int) ;
 int mpt_config (TYPE_3__*,TYPE_5__*) ;
 TYPE_2__* pci_alloc_consistent (int ,int,int*) ;
 int pci_free_consistent (int ,int,TYPE_2__*,int) ;

__attribute__((used)) static int
mptsas_sas_enclosure_pg0(MPT_ADAPTER *ioc, struct mptsas_enclosure *enclosure,
  u32 form, u32 form_specific)
{
 ConfigExtendedPageHeader_t hdr;
 CONFIGPARMS cfg;
 SasEnclosurePage0_t *buffer;
 dma_addr_t dma_handle;
 int error;
 __le64 le_identifier;

 memset(&hdr, 0, sizeof(hdr));
 hdr.PageVersion = MPI_SASENCLOSURE0_PAGEVERSION;
 hdr.PageNumber = 0;
 hdr.PageType = MPI_CONFIG_PAGETYPE_EXTENDED;
 hdr.ExtPageType = MPI_CONFIG_EXTPAGETYPE_ENCLOSURE;

 cfg.cfghdr.ehdr = &hdr;
 cfg.physAddr = -1;
 cfg.pageAddr = form + form_specific;
 cfg.action = MPI_CONFIG_ACTION_PAGE_HEADER;
 cfg.dir = 0;
 cfg.timeout = SAS_CONFIG_PAGE_TIMEOUT;

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


 memcpy(&le_identifier, &buffer->EnclosureLogicalID, sizeof(__le64));
 enclosure->enclosure_logical_id = le64_to_cpu(le_identifier);
 enclosure->enclosure_handle = le16_to_cpu(buffer->EnclosureHandle);
 enclosure->flags = le16_to_cpu(buffer->Flags);
 enclosure->num_slot = le16_to_cpu(buffer->NumSlots);
 enclosure->start_slot = le16_to_cpu(buffer->StartSlot);
 enclosure->start_id = buffer->StartTargetID;
 enclosure->start_channel = buffer->StartBus;
 enclosure->sep_id = buffer->SEPTargetID;
 enclosure->sep_channel = buffer->SEPBus;

 out_free_consistent:
 pci_free_consistent(ioc->pcidev, hdr.ExtPageLength * 4,
       buffer, dma_handle);
 out:
 return error;
}
