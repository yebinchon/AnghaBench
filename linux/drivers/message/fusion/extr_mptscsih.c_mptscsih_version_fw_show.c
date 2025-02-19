
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
typedef int ssize_t ;
struct TYPE_6__ {int Word; } ;
struct TYPE_7__ {TYPE_1__ FWVersion; } ;
struct TYPE_9__ {TYPE_2__ facts; } ;
struct TYPE_8__ {TYPE_4__* ioc; } ;
typedef TYPE_3__ MPT_SCSI_HOST ;
typedef TYPE_4__ MPT_ADAPTER ;


 int PAGE_SIZE ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 TYPE_3__* shost_priv (struct Scsi_Host*) ;
 int snprintf (char*,int ,char*,int,int,int,int) ;

__attribute__((used)) static ssize_t
mptscsih_version_fw_show(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct Scsi_Host *host = class_to_shost(dev);
 MPT_SCSI_HOST *hd = shost_priv(host);
 MPT_ADAPTER *ioc = hd->ioc;

 return snprintf(buf, PAGE_SIZE, "%02d.%02d.%02d.%02d\n",
     (ioc->facts.FWVersion.Word & 0xFF000000) >> 24,
     (ioc->facts.FWVersion.Word & 0x00FF0000) >> 16,
     (ioc->facts.FWVersion.Word & 0x0000FF00) >> 8,
     ioc->facts.FWVersion.Word & 0x000000FF);
}
