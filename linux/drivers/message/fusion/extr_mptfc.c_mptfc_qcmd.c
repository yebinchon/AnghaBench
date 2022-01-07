
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {int result; int (* scsi_done ) (struct scsi_cmnd*) ;TYPE_2__* device; } ;
struct mptfc_rport_info {int dummy; } ;
struct fc_rport {scalar_t__ dd_data; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_3__ {int vtarget; } ;
typedef TYPE_1__ VirtDevice ;
struct TYPE_4__ {TYPE_1__* hostdata; } ;


 int DID_IMM_RETRY ;
 int DID_NO_CONNECT ;
 int fc_remote_port_chkready (struct fc_rport*) ;
 int mptscsih_qcmd (struct scsi_cmnd*) ;
 int scsi_target (TYPE_2__*) ;
 struct fc_rport* starget_to_rport (int ) ;
 int stub1 (struct scsi_cmnd*) ;
 int stub2 (struct scsi_cmnd*) ;
 int stub3 (struct scsi_cmnd*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
mptfc_qcmd(struct Scsi_Host *shost, struct scsi_cmnd *SCpnt)
{
 struct mptfc_rport_info *ri;
 struct fc_rport *rport = starget_to_rport(scsi_target(SCpnt->device));
 int err;
 VirtDevice *vdevice = SCpnt->device->hostdata;

 if (!vdevice || !vdevice->vtarget) {
  SCpnt->result = DID_NO_CONNECT << 16;
  SCpnt->scsi_done(SCpnt);
  return 0;
 }

 err = fc_remote_port_chkready(rport);
 if (unlikely(err)) {
  SCpnt->result = err;
  SCpnt->scsi_done(SCpnt);
  return 0;
 }


 ri = *((struct mptfc_rport_info **)rport->dd_data);
 if (unlikely(!ri)) {
  SCpnt->result = DID_IMM_RETRY << 16;
  SCpnt->scsi_done(SCpnt);
  return 0;
 }

 return mptscsih_qcmd(SCpnt);
}
