
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {scalar_t__ bridge; int sensor; } ;
struct gspca_dev {int* usb_buf; } ;
struct cmd {int member_1; int const member_0; } ;


 int ARRAY_SIZE (struct cmd const*) ;
 scalar_t__ BRIDGE_TP6800 ;
 scalar_t__ BRIDGE_TP6810 ;
 int D_PROBE ;
 int SENSOR_CX0342 ;
 void* SENSOR_SOI763A ;







 int cx0342_6810_init (struct gspca_dev*) ;
 scalar_t__ force_sensor ;
 int gspca_dbg (struct gspca_dev*,int ,char*,int) ;
 int msleep (int) ;
 int pr_info (char*) ;
 int pr_warn (char*,int) ;
 int probe_6810 (struct gspca_dev*) ;
 int reg_r (struct gspca_dev*,int const) ;
 int reg_w_buf (struct gspca_dev*,struct cmd const*,int ) ;
 int set_dqt (struct gspca_dev*,int ) ;
 int soi763a_6810_init (struct gspca_dev*) ;

__attribute__((used)) static int sd_init(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 static const struct cmd tp6800_preinit[] = {
  {134, 0x01},
  {133, 0x01},
  {132, 0x9f},
  {131, 0x9f},
  {130, 0x80},
  {129, 0x40},
 };
 static const struct cmd tp6810_preinit[] = {
  {128, 0x2f},
  {132, 0x6f},
  {131, 0x40},
  {130, 0x9f},
  {129, 0xc1},
 };

 if (sd->bridge == BRIDGE_TP6800)
  reg_w_buf(gspca_dev, tp6800_preinit,
    ARRAY_SIZE(tp6800_preinit));
 else
  reg_w_buf(gspca_dev, tp6810_preinit,
    ARRAY_SIZE(tp6810_preinit));
 msleep(15);
 reg_r(gspca_dev, 129);
 gspca_dbg(gspca_dev, D_PROBE, "gpio: %02x\n", gspca_dev->usb_buf[0]);
 if (force_sensor >= 0) {
  sd->sensor = force_sensor;
 } else {
  if (sd->bridge == BRIDGE_TP6800) {

   switch (gspca_dev->usb_buf[0] & 0x07) {
   case 0:
    sd->sensor = SENSOR_SOI763A;
    break;
   case 1:
    sd->sensor = SENSOR_CX0342;
    break;
   }
  } else {
   int sensor;

   sensor = probe_6810(gspca_dev);
   if (sensor < 0) {
    pr_warn("Unknown sensor %d - forced to soi763a\n",
     -sensor);
    sensor = SENSOR_SOI763A;
   }
   sd->sensor = sensor;
  }
 }
 if (sd->sensor == SENSOR_SOI763A) {
  pr_info("Sensor soi763a\n");
  if (sd->bridge == BRIDGE_TP6810) {
   soi763a_6810_init(gspca_dev);
  }
 } else {
  pr_info("Sensor cx0342\n");
  if (sd->bridge == BRIDGE_TP6810) {
   cx0342_6810_init(gspca_dev);
  }
 }

 set_dqt(gspca_dev, 0);
 return 0;
}
