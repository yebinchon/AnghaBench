
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct usb_device_id {int idProduct; int idVendor; } ;
struct TYPE_9__ {int vendor; int product; } ;
struct TYPE_8__ {int qx3_detected; } ;
struct TYPE_7__ {int gainMode; } ;
struct TYPE_6__ {int firmwareVersion; int firmwareRevision; } ;
struct TYPE_10__ {TYPE_4__ pnpID; TYPE_3__ qx3; TYPE_2__ exposure; TYPE_1__ version; } ;
struct sd {int mainsFreq; TYPE_5__ params; } ;
struct cam {int nmodes; int cam_mode; } ;
struct gspca_dev {struct cam cam; } ;


 int ARRAY_SIZE (int ) ;
 int D_PROBE ;
 int ENODEV ;
 scalar_t__ FREQ_DEF ;
 scalar_t__ V4L2_CID_POWER_LINE_FREQUENCY_60HZ ;
 int get_version_information (struct gspca_dev*) ;
 int goto_low_power (struct gspca_dev*) ;
 int gspca_dbg (struct gspca_dev*,int ,char*,int ,int ) ;
 int gspca_err (struct gspca_dev*,char*,int) ;
 int mode ;
 int reset_camera_params (struct gspca_dev*) ;

__attribute__((used)) static int sd_config(struct gspca_dev *gspca_dev,
   const struct usb_device_id *id)
{
 struct sd *sd = (struct sd *) gspca_dev;
 struct cam *cam;
 int ret;

 sd->mainsFreq = FREQ_DEF == V4L2_CID_POWER_LINE_FREQUENCY_60HZ;
 reset_camera_params(gspca_dev);

 gspca_dbg(gspca_dev, D_PROBE, "cpia CPiA camera detected (vid/pid 0x%04X:0x%04X)\n",
    id->idVendor, id->idProduct);

 cam = &gspca_dev->cam;
 cam->cam_mode = mode;
 cam->nmodes = ARRAY_SIZE(mode);

 ret = goto_low_power(gspca_dev);
 if (ret)
  gspca_err(gspca_dev, "Cannot go to low power mode: %d\n",
     ret);

 sd->params.version.firmwareVersion = 0;
 get_version_information(gspca_dev);
 if (sd->params.version.firmwareVersion != 1) {
  gspca_err(gspca_dev, "only firmware version 1 is supported (got: %d)\n",
     sd->params.version.firmwareVersion);
  return -ENODEV;
 }


 if (sd->params.version.firmwareRevision <= 2 &&
     sd->params.exposure.gainMode > 2) {
  sd->params.exposure.gainMode = 2;
 }


 sd->params.qx3.qx3_detected = (sd->params.pnpID.vendor == 0x0813 &&
           sd->params.pnpID.product == 0x0001);
 return 0;
}
