
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_6__ {int Word; } ;
struct TYPE_7__ {int NumberOfPorts; TYPE_1__ FWVersion; } ;
struct TYPE_9__ {int req_depth; TYPE_2__ facts; int prod_name; int name; } ;
struct TYPE_8__ {TYPE_4__* ioc; } ;
typedef TYPE_3__ MPT_SCSI_HOST ;
typedef TYPE_4__ MPT_ADAPTER ;


 int MPT_FW_REV_MAGIC_ID_STRING ;
 int seq_printf (struct seq_file*,char*,int ,...) ;
 TYPE_3__* shost_priv (struct Scsi_Host*) ;

int mptscsih_show_info(struct seq_file *m, struct Scsi_Host *host)
{
 MPT_SCSI_HOST *hd = shost_priv(host);
 MPT_ADAPTER *ioc = hd->ioc;

 seq_printf(m, "%s: %s, ", ioc->name, ioc->prod_name);
 seq_printf(m, "%s%08xh, ", MPT_FW_REV_MAGIC_ID_STRING, ioc->facts.FWVersion.Word);
 seq_printf(m, "Ports=%d, ", ioc->facts.NumberOfPorts);
 seq_printf(m, "MaxQ=%d\n", ioc->req_depth);

 return 0;
}
