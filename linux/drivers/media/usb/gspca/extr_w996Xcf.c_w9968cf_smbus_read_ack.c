
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int usb_err; } ;
struct sd {TYPE_1__ gspca_dev; } ;
struct gspca_dev {int dummy; } ;


 int D_USBI ;
 int EIO ;
 int gspca_dbg (struct gspca_dev*,int ,char*) ;
 int w9968cf_read_sb (struct sd*) ;
 int w9968cf_write_sb (struct sd*,int) ;

__attribute__((used)) static void w9968cf_smbus_read_ack(struct sd *sd)
{
 struct gspca_dev *gspca_dev = (struct gspca_dev *)sd;
 int sda;


 w9968cf_write_sb(sd, 0x0012);
 w9968cf_write_sb(sd, 0x0013);
 sda = w9968cf_read_sb(sd);
 w9968cf_write_sb(sd, 0x0012);
 if (sda >= 0 && (sda & 0x08)) {
  gspca_dbg(gspca_dev, D_USBI, "Did not receive i2c ACK\n");
  sd->gspca_dev.usb_err = -EIO;
 }
}
