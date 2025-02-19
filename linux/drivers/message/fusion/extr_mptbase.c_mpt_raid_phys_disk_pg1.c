
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef void* u8 ;
typedef TYPE_4__* pRaidPhysDiskPage1_t ;
typedef int dma_addr_t ;
typedef int __le64 ;
struct TYPE_16__ {TYPE_7__* hdr; } ;
struct TYPE_22__ {int PageNumber; int physAddr; int PageLength; void* pageAddr; int action; TYPE_1__ cfghdr; int PageType; int PageVersion; } ;
struct TYPE_21__ {int pcidev; } ;
struct TYPE_20__ {int NumPhysDiskPaths; TYPE_3__* Path; void* PhysDiskNum; } ;
struct TYPE_19__ {int NumPhysDiskPaths; TYPE_2__* Path; } ;
struct TYPE_18__ {int OwnerWWID; int WWID; int Flags; int OwnerIdentifier; int PhysDiskBus; int PhysDiskID; } ;
struct TYPE_17__ {int OwnerWWID; int WWID; int Flags; int OwnerIdentifier; int PhysDiskBus; int PhysDiskID; } ;
typedef TYPE_5__ RaidPhysDiskPage1_t ;
typedef TYPE_6__ MPT_ADAPTER ;
typedef TYPE_7__ ConfigPageHeader_t ;
typedef TYPE_7__ CONFIGPARMS ;


 int EFAULT ;
 int ENOMEM ;
 int MPI_CONFIG_ACTION_PAGE_HEADER ;
 int MPI_CONFIG_ACTION_PAGE_READ_CURRENT ;
 int MPI_CONFIG_PAGETYPE_RAID_PHYSDISK ;
 int MPI_RAIDPHYSDISKPAGE1_PAGEVERSION ;
 int le16_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 int memcpy (int *,int *,int) ;
 int memset (TYPE_7__*,int ,int) ;
 scalar_t__ mpt_config (TYPE_6__*,TYPE_7__*) ;
 TYPE_4__* pci_alloc_consistent (int ,int,int*) ;
 int pci_free_consistent (int ,int,TYPE_4__*,int) ;

int
mpt_raid_phys_disk_pg1(MPT_ADAPTER *ioc, u8 phys_disk_num,
  RaidPhysDiskPage1_t *phys_disk)
{
 CONFIGPARMS cfg;
 ConfigPageHeader_t hdr;
 dma_addr_t dma_handle;
 pRaidPhysDiskPage1_t buffer = ((void*)0);
 int rc;
 int i;
 __le64 sas_address;

 memset(&cfg, 0 , sizeof(CONFIGPARMS));
 memset(&hdr, 0 , sizeof(ConfigPageHeader_t));
 rc = 0;

 hdr.PageVersion = MPI_RAIDPHYSDISKPAGE1_PAGEVERSION;
 hdr.PageType = MPI_CONFIG_PAGETYPE_RAID_PHYSDISK;
 hdr.PageNumber = 1;
 cfg.cfghdr.hdr = &hdr;
 cfg.physAddr = -1;
 cfg.action = MPI_CONFIG_ACTION_PAGE_HEADER;

 if (mpt_config(ioc, &cfg) != 0) {
  rc = -EFAULT;
  goto out;
 }

 if (!hdr.PageLength) {
  rc = -EFAULT;
  goto out;
 }

 buffer = pci_alloc_consistent(ioc->pcidev, hdr.PageLength * 4,
     &dma_handle);

 if (!buffer) {
  rc = -ENOMEM;
  goto out;
 }

 cfg.physAddr = dma_handle;
 cfg.action = MPI_CONFIG_ACTION_PAGE_READ_CURRENT;
 cfg.pageAddr = phys_disk_num;

 if (mpt_config(ioc, &cfg) != 0) {
  rc = -EFAULT;
  goto out;
 }

 phys_disk->NumPhysDiskPaths = buffer->NumPhysDiskPaths;
 phys_disk->PhysDiskNum = phys_disk_num;
 for (i = 0; i < phys_disk->NumPhysDiskPaths; i++) {
  phys_disk->Path[i].PhysDiskID = buffer->Path[i].PhysDiskID;
  phys_disk->Path[i].PhysDiskBus = buffer->Path[i].PhysDiskBus;
  phys_disk->Path[i].OwnerIdentifier =
    buffer->Path[i].OwnerIdentifier;
  phys_disk->Path[i].Flags = le16_to_cpu(buffer->Path[i].Flags);
  memcpy(&sas_address, &buffer->Path[i].WWID, sizeof(__le64));
  sas_address = le64_to_cpu(sas_address);
  memcpy(&phys_disk->Path[i].WWID, &sas_address, sizeof(__le64));
  memcpy(&sas_address,
    &buffer->Path[i].OwnerWWID, sizeof(__le64));
  sas_address = le64_to_cpu(sas_address);
  memcpy(&phys_disk->Path[i].OwnerWWID,
    &sas_address, sizeof(__le64));
 }

 out:

 if (buffer)
  pci_free_consistent(ioc->pcidev, hdr.PageLength * 4, buffer,
      dma_handle);

 return rc;
}
