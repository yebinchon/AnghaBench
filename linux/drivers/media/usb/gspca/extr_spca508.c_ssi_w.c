
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct gspca_dev {scalar_t__* usb_buf; } ;


 int gspca_err (struct gspca_dev*,char*,scalar_t__) ;
 int msleep (int) ;
 int reg_read (struct gspca_dev*,int) ;
 int reg_write (struct gspca_dev*,int,int) ;

__attribute__((used)) static int ssi_w(struct gspca_dev *gspca_dev,
  u16 reg, u16 val)
{
 int ret, retry;

 ret = reg_write(gspca_dev, 0x8802, reg >> 8);
 if (ret < 0)
  goto out;
 ret = reg_write(gspca_dev, 0x8801, reg & 0x00ff);
 if (ret < 0)
  goto out;
 if ((reg & 0xff00) == 0x1000) {
  ret = reg_write(gspca_dev, 0x8805, val & 0x00ff);
  if (ret < 0)
   goto out;
  val >>= 8;
 }
 ret = reg_write(gspca_dev, 0x8800, val);
 if (ret < 0)
  goto out;


 retry = 10;
 for (;;) {
  ret = reg_read(gspca_dev, 0x8803);
  if (ret < 0)
   break;
  if (gspca_dev->usb_buf[0] == 0)
   break;
  if (--retry <= 0) {
   gspca_err(gspca_dev, "ssi_w busy %02x\n",
      gspca_dev->usb_buf[0]);
   ret = -1;
   break;
  }
  msleep(8);
 }

out:
 return ret;
}
