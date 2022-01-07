
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int cameraHeadID; int vpRevision; int vpVersion; } ;
struct TYPE_8__ {int deviceRevision; int product; int vendor; } ;
struct TYPE_7__ {int vcRevision; int vcVersion; int firmwareRevision; int firmwareVersion; } ;
struct TYPE_6__ {scalar_t__ qx3_detected; } ;
struct TYPE_10__ {TYPE_4__ vpVersion; TYPE_3__ pnpID; TYPE_2__ version; TYPE_1__ qx3; } ;
struct sd {TYPE_5__ params; } ;
struct gspca_dev {int dummy; } ;


 int D_PROBE ;
 int command_setlights (struct gspca_dev*) ;
 int gspca_dbg (struct gspca_dev*,int ,char*,int ,int ,int ,...) ;
 int sd_start (struct gspca_dev*) ;
 int sd_stopN (struct gspca_dev*) ;

__attribute__((used)) static int sd_init(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int ret;




 ret = sd_start(gspca_dev);
 if (ret)
  return ret;



 if (sd->params.qx3.qx3_detected)
  command_setlights(gspca_dev);

 sd_stopN(gspca_dev);

 gspca_dbg(gspca_dev, D_PROBE, "CPIA Version:             %d.%02d (%d.%d)\n",
    sd->params.version.firmwareVersion,
    sd->params.version.firmwareRevision,
    sd->params.version.vcVersion,
    sd->params.version.vcRevision);
 gspca_dbg(gspca_dev, D_PROBE, "CPIA PnP-ID:              %04x:%04x:%04x",
    sd->params.pnpID.vendor, sd->params.pnpID.product,
    sd->params.pnpID.deviceRevision);
 gspca_dbg(gspca_dev, D_PROBE, "VP-Version:               %d.%d %04x",
    sd->params.vpVersion.vpVersion,
    sd->params.vpVersion.vpRevision,
    sd->params.vpVersion.cameraHeadID);

 return 0;
}
