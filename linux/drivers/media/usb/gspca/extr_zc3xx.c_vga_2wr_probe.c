
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct gspca_dev {int dummy; } ;


 int D_PROBE ;
 int SENSOR_PAS202B ;
 int gspca_dbg (struct gspca_dev*,int ,char*,int) ;
 int i2c_read (struct gspca_dev*,int) ;
 int i2c_write (struct gspca_dev*,int,int,int) ;
 int msleep (int) ;
 int reg_r (struct gspca_dev*,int) ;
 int reg_w (struct gspca_dev*,int,int) ;
 int send_unknown (struct gspca_dev*,int ) ;
 int start_2wr_probe (struct gspca_dev*,int) ;

__attribute__((used)) static int vga_2wr_probe(struct gspca_dev *gspca_dev)
{
 u16 retword;

 start_2wr_probe(gspca_dev, 0x00);
 i2c_write(gspca_dev, 0x01, 0xaa, 0x00);
 retword = i2c_read(gspca_dev, 0x01);
 if (retword != 0)
  return 0x00;

 start_2wr_probe(gspca_dev, 0x04);
 i2c_write(gspca_dev, 0x01, 0xaa, 0x00);
 retword = i2c_read(gspca_dev, 0x01);
 if (retword != 0)
  return 0x04;

 start_2wr_probe(gspca_dev, 0x06);
 reg_w(gspca_dev, 0x08, 0x008d);
 i2c_write(gspca_dev, 0x11, 0xaa, 0x00);
 retword = i2c_read(gspca_dev, 0x11);
 if (retword != 0) {


  goto ov_check;
 }

 start_2wr_probe(gspca_dev, 0x08);
 i2c_write(gspca_dev, 0x1c, 0x00, 0x00);
 i2c_write(gspca_dev, 0x15, 0xaa, 0x00);
 retword = i2c_read(gspca_dev, 0x15);
 if (retword != 0)
  return 0x08;

 start_2wr_probe(gspca_dev, 0x0a);
 i2c_write(gspca_dev, 0x07, 0xaa, 0xaa);
 retword = i2c_read(gspca_dev, 0x07);
 if (retword != 0)
  return 0x0a;
 retword = i2c_read(gspca_dev, 0x03);
 if (retword != 0)
  return 0x0a;
 retword = i2c_read(gspca_dev, 0x04);
 if (retword != 0)
  return 0x0a;

 start_2wr_probe(gspca_dev, 0x0c);
 i2c_write(gspca_dev, 0x01, 0x11, 0x00);
 retword = i2c_read(gspca_dev, 0x01);
 if (retword != 0)
  return 0x0c;

 start_2wr_probe(gspca_dev, 0x0e);
 reg_w(gspca_dev, 0x08, 0x008d);
 i2c_write(gspca_dev, 0x03, 0xaa, 0x00);
 msleep(50);
 retword = i2c_read(gspca_dev, 0x03);
 if (retword != 0) {
  send_unknown(gspca_dev, SENSOR_PAS202B);
  return 0x0e;
 }

 start_2wr_probe(gspca_dev, 0x02);
 i2c_write(gspca_dev, 0x01, 0xaa, 0x00);
 retword = i2c_read(gspca_dev, 0x01);
 if (retword != 0)
  return 0x02;
ov_check:
 reg_r(gspca_dev, 0x0010);
 reg_r(gspca_dev, 0x0010);

 reg_w(gspca_dev, 0x01, 0x0000);
 reg_w(gspca_dev, 0x01, 0x0001);
 reg_w(gspca_dev, 0x06, 0x0010);
 reg_w(gspca_dev, 0xa1, 0x008b);
 reg_w(gspca_dev, 0x08, 0x008d);
 msleep(500);
 reg_w(gspca_dev, 0x01, 0x0012);
 i2c_write(gspca_dev, 0x12, 0x80, 0x00);
 retword = i2c_read(gspca_dev, 0x0a) << 8;
 retword |= i2c_read(gspca_dev, 0x0b);
 gspca_dbg(gspca_dev, D_PROBE, "probe 2wr ov vga 0x%04x\n", retword);
 switch (retword) {
 case 0x7631:
  reg_w(gspca_dev, 0x06, 0x0010);
  break;
 case 0x7620:
 case 0x7648:
  break;
 default:
  return -1;
 }
 return retword;
}
