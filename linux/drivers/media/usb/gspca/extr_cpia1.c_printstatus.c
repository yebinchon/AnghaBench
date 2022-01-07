
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gspca_dev {int dummy; } ;
struct TYPE_2__ {int errorCode; int vpStatus; int debugFlags; int cmdError; int fatalError; int streamState; int grabState; int systemState; } ;
struct cam_params {TYPE_1__ status; } ;


 int D_PROBE ;
 int gspca_dbg (struct gspca_dev*,int ,char*,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void printstatus(struct gspca_dev *gspca_dev, struct cam_params *params)
{
 gspca_dbg(gspca_dev, D_PROBE, "status: %02x %02x %02x %02x %02x %02x %02x %02x\n",
    params->status.systemState, params->status.grabState,
    params->status.streamState, params->status.fatalError,
    params->status.cmdError, params->status.debugFlags,
    params->status.vpStatus, params->status.errorCode);
}
