
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct _MPT_SCSI_HOST {TYPE_4__* ioc; } ;
struct TYPE_7__ {TYPE_2__* pIocPg2; } ;
struct TYPE_8__ {TYPE_3__ raid_data; } ;
struct TYPE_6__ {int NumActiveVolumes; TYPE_1__* RaidVolume; } ;
struct TYPE_5__ {scalar_t__ VolumeID; } ;
typedef TYPE_4__ MPT_ADAPTER ;



__attribute__((used)) static int
mptspi_is_raid(struct _MPT_SCSI_HOST *hd, u32 id)
{
 int i, rc = 0;
 MPT_ADAPTER *ioc = hd->ioc;

 if (!ioc->raid_data.pIocPg2)
  goto out;

 if (!ioc->raid_data.pIocPg2->NumActiveVolumes)
  goto out;
 for (i=0; i < ioc->raid_data.pIocPg2->NumActiveVolumes; i++) {
  if (ioc->raid_data.pIocPg2->RaidVolume[i].VolumeID == id) {
   rc = 1;
   goto out;
  }
 }

 out:
 return rc;
}
