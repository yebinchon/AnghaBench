
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sd {int sensor_page; } ;
struct gspca_dev {int usb_err; } ;


 scalar_t__ STK1135_REG_ASIC ;
 scalar_t__ STK1135_REG_GCTRL ;
 scalar_t__ STK1135_REG_ICTRL ;
 scalar_t__ STK1135_REG_RMCTL ;
 scalar_t__ STK1135_REG_SICTL ;
 int pr_info (char*,char*,int) ;
 int reg_w (struct gspca_dev*,scalar_t__,int) ;
 int sensor_read (struct gspca_dev*,int) ;
 int stk1135_camera_disable (struct gspca_dev*) ;
 int stk1135_configure_clock (struct gspca_dev*) ;

__attribute__((used)) static int sd_init(struct gspca_dev *gspca_dev)
{
 u16 sensor_id;
 char *sensor_name;
 struct sd *sd = (struct sd *) gspca_dev;


 reg_w(gspca_dev, STK1135_REG_GCTRL + 2, 0x78);

 reg_w(gspca_dev, STK1135_REG_GCTRL, (1 << 5));

 reg_w(gspca_dev, STK1135_REG_GCTRL + 3, 0x80);

 reg_w(gspca_dev, STK1135_REG_ICTRL + 1, 0x00);
 reg_w(gspca_dev, STK1135_REG_ICTRL + 3, 0x03);

 reg_w(gspca_dev, STK1135_REG_RMCTL + 1, 0x00);
 reg_w(gspca_dev, STK1135_REG_RMCTL + 3, 0x02);


 reg_w(gspca_dev, STK1135_REG_SICTL, 0x80);
 reg_w(gspca_dev, STK1135_REG_SICTL, 0x00);

 reg_w(gspca_dev, STK1135_REG_SICTL + 3, 0xba);

 reg_w(gspca_dev, STK1135_REG_ASIC + 3, 0x00);

 stk1135_configure_clock(gspca_dev);


 sd->sensor_page = 0xff;
 sensor_id = sensor_read(gspca_dev, 0x000);

 switch (sensor_id) {
 case 0x148c:
  sensor_name = "MT9M112";
  break;
 default:
  sensor_name = "unknown";
 }
 pr_info("Detected sensor type %s (0x%x)\n", sensor_name, sensor_id);

 stk1135_camera_disable(gspca_dev);

 return gspca_dev->usb_err;
}
