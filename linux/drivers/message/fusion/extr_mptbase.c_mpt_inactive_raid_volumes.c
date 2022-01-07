
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_9__ ;
typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_22__ {int PhysDiskIOC; int PhysDiskID; int PhysDiskBus; int PhysDiskNum; } ;
struct inactive_raid_component_info {int volumeID; int volumeBus; int list; TYPE_4__ d; } ;
typedef TYPE_6__* pRaidVolumePage0_t ;
typedef int dma_addr_t ;
struct TYPE_19__ {TYPE_9__* hdr; } ;
struct TYPE_27__ {int pageAddr; int PageLength; int action; int physAddr; TYPE_1__ cfghdr; int PageType; } ;
struct TYPE_23__ {int inactive_list_mutex; int inactive_list; } ;
struct TYPE_26__ {int pcidev; TYPE_5__ raid_data; } ;
struct TYPE_25__ {int PhysDiskIOC; int PhysDiskID; int PhysDiskBus; int PhysDiskNum; } ;
struct TYPE_20__ {int Flags; scalar_t__ State; } ;
struct TYPE_24__ {int NumPhysDisks; TYPE_3__* PhysDisk; TYPE_2__ VolumeStatus; } ;
struct TYPE_21__ {int PhysDiskNum; } ;
typedef TYPE_7__ RaidPhysDiskPage0_t ;
typedef TYPE_8__ MPT_ADAPTER ;
typedef TYPE_9__ ConfigPageHeader_t ;
typedef TYPE_9__ CONFIGPARMS ;


 int GFP_KERNEL ;
 int MPI_CONFIG_ACTION_PAGE_HEADER ;
 int MPI_CONFIG_ACTION_PAGE_READ_CURRENT ;
 int MPI_CONFIG_PAGETYPE_RAID_VOLUME ;
 int MPI_RAIDVOL0_STATUS_FLAG_ENABLED ;
 int MPI_RAIDVOL0_STATUS_FLAG_VOLUME_INACTIVE ;
 scalar_t__ MPI_RAIDVOL0_STATUS_STATE_FAILED ;
 scalar_t__ MPI_RAIDVOL0_STATUS_STATE_MISSING ;
 struct inactive_raid_component_info* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int memset (TYPE_9__*,int ,int) ;
 scalar_t__ mpt_config (TYPE_8__*,TYPE_9__*) ;
 scalar_t__ mpt_raid_phys_disk_pg0 (TYPE_8__*,int ,TYPE_7__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_6__* pci_alloc_consistent (int ,int,int *) ;
 int pci_free_consistent (int ,int,TYPE_6__*,int ) ;

__attribute__((used)) static void
mpt_inactive_raid_volumes(MPT_ADAPTER *ioc, u8 channel, u8 id)
{
 CONFIGPARMS cfg;
 ConfigPageHeader_t hdr;
 dma_addr_t dma_handle;
 pRaidVolumePage0_t buffer = ((void*)0);
 int i;
 RaidPhysDiskPage0_t phys_disk;
 struct inactive_raid_component_info *component_info;
 int handle_inactive_volumes;

 memset(&cfg, 0 , sizeof(CONFIGPARMS));
 memset(&hdr, 0 , sizeof(ConfigPageHeader_t));
 hdr.PageType = MPI_CONFIG_PAGETYPE_RAID_VOLUME;
 cfg.pageAddr = (channel << 8) + id;
 cfg.cfghdr.hdr = &hdr;
 cfg.action = MPI_CONFIG_ACTION_PAGE_HEADER;

 if (mpt_config(ioc, &cfg) != 0)
  goto out;

 if (!hdr.PageLength)
  goto out;

 buffer = pci_alloc_consistent(ioc->pcidev, hdr.PageLength * 4,
     &dma_handle);

 if (!buffer)
  goto out;

 cfg.physAddr = dma_handle;
 cfg.action = MPI_CONFIG_ACTION_PAGE_READ_CURRENT;

 if (mpt_config(ioc, &cfg) != 0)
  goto out;

 if (!buffer->NumPhysDisks)
  goto out;

 handle_inactive_volumes =
    (buffer->VolumeStatus.Flags & MPI_RAIDVOL0_STATUS_FLAG_VOLUME_INACTIVE ||
    (buffer->VolumeStatus.Flags & MPI_RAIDVOL0_STATUS_FLAG_ENABLED) == 0 ||
     buffer->VolumeStatus.State == MPI_RAIDVOL0_STATUS_STATE_FAILED ||
     buffer->VolumeStatus.State == MPI_RAIDVOL0_STATUS_STATE_MISSING) ? 1 : 0;

 if (!handle_inactive_volumes)
  goto out;

 mutex_lock(&ioc->raid_data.inactive_list_mutex);
 for (i = 0; i < buffer->NumPhysDisks; i++) {
  if(mpt_raid_phys_disk_pg0(ioc,
      buffer->PhysDisk[i].PhysDiskNum, &phys_disk) != 0)
   continue;

  if ((component_info = kmalloc(sizeof (*component_info),
   GFP_KERNEL)) == ((void*)0))
   continue;

  component_info->volumeID = id;
  component_info->volumeBus = channel;
  component_info->d.PhysDiskNum = phys_disk.PhysDiskNum;
  component_info->d.PhysDiskBus = phys_disk.PhysDiskBus;
  component_info->d.PhysDiskID = phys_disk.PhysDiskID;
  component_info->d.PhysDiskIOC = phys_disk.PhysDiskIOC;

  list_add_tail(&component_info->list,
      &ioc->raid_data.inactive_list);
 }
 mutex_unlock(&ioc->raid_data.inactive_list_mutex);

 out:
 if (buffer)
  pci_free_consistent(ioc->pcidev, hdr.PageLength * 4, buffer,
      dma_handle);
}
