
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {int result; TYPE_2__* device; int (* scsi_done ) (struct scsi_cmnd*) ;} ;
struct _MPT_SCSI_HOST {int * ioc; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_3__ {int vtarget; } ;
typedef TYPE_1__ VirtDevice ;
struct TYPE_4__ {int channel; int id; TYPE_1__* hostdata; } ;
typedef int MPT_ADAPTER ;


 int DID_NO_CONNECT ;
 int ddvprintk (int *,int ) ;
 scalar_t__ mptscsih_is_phys_disk (int *,int ,int ) ;
 int mptscsih_qcmd (struct scsi_cmnd*) ;
 int scsi_print_command (struct scsi_cmnd*) ;
 int scsi_target (TYPE_2__*) ;
 struct _MPT_SCSI_HOST* shost_priv (struct Scsi_Host*) ;
 scalar_t__ spi_dv_pending (int ) ;
 int stub1 (struct scsi_cmnd*) ;
 int stub2 (struct scsi_cmnd*) ;

__attribute__((used)) static int
mptspi_qcmd(struct Scsi_Host *shost, struct scsi_cmnd *SCpnt)
{
 struct _MPT_SCSI_HOST *hd = shost_priv(shost);
 VirtDevice *vdevice = SCpnt->device->hostdata;
 MPT_ADAPTER *ioc = hd->ioc;

 if (!vdevice || !vdevice->vtarget) {
  SCpnt->result = DID_NO_CONNECT << 16;
  SCpnt->scsi_done(SCpnt);
  return 0;
 }

 if (SCpnt->device->channel == 1 &&
  mptscsih_is_phys_disk(ioc, 0, SCpnt->device->id) == 0) {
  SCpnt->result = DID_NO_CONNECT << 16;
  SCpnt->scsi_done(SCpnt);
  return 0;
 }

 if (spi_dv_pending(scsi_target(SCpnt->device)))
  ddvprintk(ioc, scsi_print_command(SCpnt));

 return mptscsih_qcmd(SCpnt);
}
