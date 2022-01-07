
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {void* sensor; } ;
struct gspca_dev {int dummy; } ;


 int D_PROBE ;
 int OV7610_REG_COM_I ;
 void* SEN_OV7610 ;
 void* SEN_OV7620 ;
 void* SEN_OV7620AE ;
 void* SEN_OV7640 ;
 void* SEN_OV7648 ;
 void* SEN_OV7660 ;
 void* SEN_OV7670 ;
 void* SEN_OV76BE ;
 int gspca_dbg (struct gspca_dev*,int ,char*,...) ;
 int gspca_err (struct gspca_dev*,char*,...) ;
 int i2c_r (struct sd*,int) ;

__attribute__((used)) static void ov7xx0_configure(struct sd *sd)
{
 struct gspca_dev *gspca_dev = (struct gspca_dev *)sd;
 int rc, high, low;

 gspca_dbg(gspca_dev, D_PROBE, "starting OV7xx0 configuration\n");


 rc = i2c_r(sd, OV7610_REG_COM_I);



 if (rc < 0) {
  gspca_err(gspca_dev, "Error detecting sensor type\n");
  return;
 }
 if ((rc & 3) == 3) {

  high = i2c_r(sd, 0x0a);
  low = i2c_r(sd, 0x0b);

  if (high == 0x76 && (low & 0xf0) == 0x70) {
   gspca_dbg(gspca_dev, D_PROBE, "Sensor is an OV76%02x\n",
      low);
   sd->sensor = SEN_OV7670;
  } else {
   gspca_dbg(gspca_dev, D_PROBE, "Sensor is an OV7610\n");
   sd->sensor = SEN_OV7610;
  }
 } else if ((rc & 3) == 1) {

  if (i2c_r(sd, 0x15) & 1) {
   gspca_dbg(gspca_dev, D_PROBE, "Sensor is an OV7620AE\n");
   sd->sensor = SEN_OV7620AE;
  } else {
   gspca_dbg(gspca_dev, D_PROBE, "Sensor is an OV76BE\n");
   sd->sensor = SEN_OV76BE;
  }
 } else if ((rc & 3) == 0) {

  high = i2c_r(sd, 0x0a);
  if (high < 0) {
   gspca_err(gspca_dev, "Error detecting camera chip PID\n");
   return;
  }
  low = i2c_r(sd, 0x0b);
  if (low < 0) {
   gspca_err(gspca_dev, "Error detecting camera chip VER\n");
   return;
  }
  if (high == 0x76) {
   switch (low) {
   case 0x30:
    gspca_err(gspca_dev, "Sensor is an OV7630/OV7635\n");
    gspca_err(gspca_dev, "7630 is not supported by this driver\n");
    return;
   case 0x40:
    gspca_dbg(gspca_dev, D_PROBE, "Sensor is an OV7645\n");
    sd->sensor = SEN_OV7640;
    break;
   case 0x45:
    gspca_dbg(gspca_dev, D_PROBE, "Sensor is an OV7645B\n");
    sd->sensor = SEN_OV7640;
    break;
   case 0x48:
    gspca_dbg(gspca_dev, D_PROBE, "Sensor is an OV7648\n");
    sd->sensor = SEN_OV7648;
    break;
   case 0x60:
    gspca_dbg(gspca_dev, D_PROBE, "Sensor is a OV7660\n");
    sd->sensor = SEN_OV7660;
    break;
   default:
    gspca_err(gspca_dev, "Unknown sensor: 0x76%02x\n",
       low);
    return;
   }
  } else {
   gspca_dbg(gspca_dev, D_PROBE, "Sensor is an OV7620\n");
   sd->sensor = SEN_OV7620;
  }
 } else {
  gspca_err(gspca_dev, "Unknown image sensor version: %d\n",
     rc & 3);
 }
}
