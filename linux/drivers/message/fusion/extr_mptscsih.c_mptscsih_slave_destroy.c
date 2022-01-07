
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_target {TYPE_1__* hostdata; } ;
struct scsi_device {int * hostdata; struct Scsi_Host* host; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {int num_luns; } ;
typedef TYPE_1__ VirtTarget ;
typedef int VirtDevice ;
typedef int MPT_SCSI_HOST ;


 int kfree (int *) ;
 int mptscsih_search_running_cmds (int *,int *) ;
 int mptscsih_synchronize_cache (int *,int *) ;
 struct scsi_target* scsi_target (struct scsi_device*) ;
 int * shost_priv (struct Scsi_Host*) ;

void
mptscsih_slave_destroy(struct scsi_device *sdev)
{
 struct Scsi_Host *host = sdev->host;
 MPT_SCSI_HOST *hd = shost_priv(host);
 VirtTarget *vtarget;
 VirtDevice *vdevice;
 struct scsi_target *starget;

 starget = scsi_target(sdev);
 vtarget = starget->hostdata;
 vdevice = sdev->hostdata;
 if (!vdevice)
  return;

 mptscsih_search_running_cmds(hd, vdevice);
 vtarget->num_luns--;
 mptscsih_synchronize_cache(hd, vdevice);
 kfree(vdevice);
 sdev->hostdata = ((void*)0);
}
