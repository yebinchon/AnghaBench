
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct gspca_dev {scalar_t__ usb_err; scalar_t__* usb_buf; } ;


 int D_FRAM ;
 int gspca_dbg (struct gspca_dev*,int ,char*,scalar_t__,scalar_t__) ;
 int msleep (int) ;
 int reg_r (struct gspca_dev*,int,int,int) ;
 int reg_w_riv (struct gspca_dev*,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static void spca504A_acknowledged_command(struct gspca_dev *gspca_dev,
   u8 req,
   u16 idx, u16 val, u8 endcode, u8 count)
{
 u16 status;

 reg_w_riv(gspca_dev, req, idx, val);
 reg_r(gspca_dev, 0x01, 0x0001, 1);
 if (gspca_dev->usb_err < 0)
  return;
 gspca_dbg(gspca_dev, D_FRAM, "Status 0x%02x Need 0x%02x\n",
    gspca_dev->usb_buf[0], endcode);
 if (!count)
  return;
 count = 200;
 while (--count > 0) {
  msleep(10);


  reg_r(gspca_dev, 0x01, 0x0001, 1);
  status = gspca_dev->usb_buf[0];
  if (status == endcode) {
   gspca_dbg(gspca_dev, D_FRAM, "status 0x%04x after wait %d\n",
      status, 200 - count);
    break;
  }
 }
}
