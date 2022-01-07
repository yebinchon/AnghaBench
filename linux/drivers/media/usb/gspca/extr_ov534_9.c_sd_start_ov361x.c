
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int curr_mode; int usb_err; } ;


 int ARRAY_SIZE (int ) ;
 int msleep (int) ;






 int ov361x_bridge_start_1024 ;
 int ov361x_bridge_start_160 ;
 int ov361x_bridge_start_1600 ;
 int ov361x_bridge_start_2048 ;
 int ov361x_bridge_start_320 ;
 int ov361x_bridge_start_640 ;
 int ov361x_last ;
 int ov361x_start_1024 ;
 int ov361x_start_160 ;
 int ov361x_start_1600 ;
 int ov361x_start_2048 ;
 int ov361x_start_320 ;
 int ov361x_start_640 ;
 int reg_w (struct gspca_dev*,int,int) ;
 int reg_w_array (struct gspca_dev*,int ,int ) ;
 int sccb_w_array (struct gspca_dev*,int ,int ) ;
 int sccb_write (struct gspca_dev*,int,int) ;

__attribute__((used)) static int sd_start_ov361x(struct gspca_dev *gspca_dev)
{
 sccb_write(gspca_dev, 0x12, 0x80);
 msleep(20);
 switch (gspca_dev->curr_mode % (ov361x_last)) {
 case 130:
  reg_w_array(gspca_dev, ov361x_bridge_start_2048,
       ARRAY_SIZE(ov361x_bridge_start_2048));
  sccb_w_array(gspca_dev, ov361x_start_2048,
        ARRAY_SIZE(ov361x_start_2048));
  break;
 case 131:
  reg_w_array(gspca_dev, ov361x_bridge_start_1600,
       ARRAY_SIZE(ov361x_bridge_start_1600));
  sccb_w_array(gspca_dev, ov361x_start_1600,
        ARRAY_SIZE(ov361x_start_1600));
  break;
 case 133:
  reg_w_array(gspca_dev, ov361x_bridge_start_1024,
       ARRAY_SIZE(ov361x_bridge_start_1024));
  sccb_w_array(gspca_dev, ov361x_start_1024,
        ARRAY_SIZE(ov361x_start_1024));
  break;
 case 128:
  reg_w_array(gspca_dev, ov361x_bridge_start_640,
       ARRAY_SIZE(ov361x_bridge_start_640));
  sccb_w_array(gspca_dev, ov361x_start_640,
        ARRAY_SIZE(ov361x_start_640));
  break;
 case 129:
  reg_w_array(gspca_dev, ov361x_bridge_start_320,
       ARRAY_SIZE(ov361x_bridge_start_320));
  sccb_w_array(gspca_dev, ov361x_start_320,
        ARRAY_SIZE(ov361x_start_320));
  break;
 case 132:
  reg_w_array(gspca_dev, ov361x_bridge_start_160,
       ARRAY_SIZE(ov361x_bridge_start_160));
  sccb_w_array(gspca_dev, ov361x_start_160,
        ARRAY_SIZE(ov361x_start_160));
  break;
 }
 reg_w(gspca_dev, 0xe0, 0x00);

 return gspca_dev->usb_err;
}
