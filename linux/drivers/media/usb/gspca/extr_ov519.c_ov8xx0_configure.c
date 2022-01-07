
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int sensor; } ;
struct gspca_dev {int dummy; } ;


 int D_PROBE ;
 int OV7610_REG_COM_I ;
 int SEN_OV8610 ;
 int gspca_dbg (struct gspca_dev*,int ,char*) ;
 int gspca_err (struct gspca_dev*,char*,...) ;
 int i2c_r (struct sd*,int ) ;

__attribute__((used)) static void ov8xx0_configure(struct sd *sd)
{
 struct gspca_dev *gspca_dev = (struct gspca_dev *)sd;
 int rc;

 gspca_dbg(gspca_dev, D_PROBE, "starting ov8xx0 configuration\n");


 rc = i2c_r(sd, OV7610_REG_COM_I);
 if (rc < 0) {
  gspca_err(gspca_dev, "Error detecting sensor type\n");
  return;
 }
 if ((rc & 3) == 1)
  sd->sensor = SEN_OV8610;
 else
  gspca_err(gspca_dev, "Unknown image sensor version: %d\n",
     rc & 3);
}
