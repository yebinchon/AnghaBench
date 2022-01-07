
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct scsi_device {scalar_t__ channel; TYPE_2__* hostdata; struct Scsi_Host* host; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_6__ {TYPE_1__* vtarget; } ;
typedef TYPE_2__ VirtDevice ;
struct TYPE_7__ {int * ioc; } ;
struct TYPE_5__ {scalar_t__ deleted; } ;
typedef TYPE_3__ MPT_SCSI_HOST ;
typedef int MPT_ADAPTER ;


 int KERN_INFO ;
 scalar_t__ MPTSAS_RAID_CHANNEL ;
 int mptsas_add_device_component_starget (int *,int ) ;
 int mptsas_add_device_component_starget_ir (int *,int ) ;
 int mptscsih_slave_configure (struct scsi_device*) ;
 int sas_read_port_mode_page (struct scsi_device*) ;
 int scsi_target (struct scsi_device*) ;
 int sdev_printk (int ,struct scsi_device*,char*) ;
 TYPE_3__* shost_priv (struct Scsi_Host*) ;

__attribute__((used)) static int
mptsas_slave_configure(struct scsi_device *sdev)
{
 struct Scsi_Host *host = sdev->host;
 MPT_SCSI_HOST *hd = shost_priv(host);
 MPT_ADAPTER *ioc = hd->ioc;
 VirtDevice *vdevice = sdev->hostdata;

 if (vdevice->vtarget->deleted) {
  sdev_printk(KERN_INFO, sdev, "clearing deleted flag\n");
  vdevice->vtarget->deleted = 0;
 }





 if (sdev->channel == MPTSAS_RAID_CHANNEL) {
  mptsas_add_device_component_starget_ir(ioc, scsi_target(sdev));
  goto out;
 }

 sas_read_port_mode_page(sdev);

 mptsas_add_device_component_starget(ioc, scsi_target(sdev));

 out:
 return mptscsih_slave_configure(sdev);
}
