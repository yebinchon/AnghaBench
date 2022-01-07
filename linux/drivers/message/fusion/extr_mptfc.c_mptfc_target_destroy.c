
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_target {int * hostdata; } ;
struct mptfc_rport_info {int * starget; } ;
struct fc_rport {scalar_t__ dd_data; } ;


 int kfree (int *) ;
 struct fc_rport* starget_to_rport (struct scsi_target*) ;

__attribute__((used)) static void
mptfc_target_destroy(struct scsi_target *starget)
{
 struct fc_rport *rport;
 struct mptfc_rport_info *ri;

 rport = starget_to_rport(starget);
 if (rport) {
  ri = *((struct mptfc_rport_info **)rport->dd_data);
  if (ri)
   ri->starget = ((void*)0);
 }
 kfree(starget->hostdata);
 starget->hostdata = ((void*)0);
}
