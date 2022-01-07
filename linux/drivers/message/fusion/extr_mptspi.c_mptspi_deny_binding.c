
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int parent; } ;
struct scsi_target {scalar_t__ channel; int id; TYPE_1__ dev; } ;
struct _MPT_SCSI_HOST {int dummy; } ;
struct TYPE_4__ {scalar_t__ hostdata; } ;


 TYPE_2__* dev_to_shost (int ) ;
 scalar_t__ mptspi_is_raid (struct _MPT_SCSI_HOST*,int ) ;

__attribute__((used)) static int
mptspi_deny_binding(struct scsi_target *starget)
{
 struct _MPT_SCSI_HOST *hd =
  (struct _MPT_SCSI_HOST *)dev_to_shost(starget->dev.parent)->hostdata;
 return ((mptspi_is_raid(hd, starget->id)) &&
  starget->channel == 0) ? 1 : 0;
}
