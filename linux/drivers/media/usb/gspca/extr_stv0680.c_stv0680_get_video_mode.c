
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int* usb_buf; } ;


 int EIO ;
 int gspca_err (struct gspca_dev*,char*) ;
 int memset (int*,int ,int) ;
 int stv0680_handle_error (struct gspca_dev*,int ) ;
 int stv_sndctrl (struct gspca_dev*,int ,int,int ,int) ;

__attribute__((used)) static int stv0680_get_video_mode(struct gspca_dev *gspca_dev)
{

 memset(gspca_dev->usb_buf, 0, 8);
 gspca_dev->usb_buf[0] = 0x0f;

 if (stv_sndctrl(gspca_dev, 0, 0x87, 0, 0x08) != 0x08) {
  gspca_err(gspca_dev, "Get_Camera_Mode failed\n");
  return stv0680_handle_error(gspca_dev, -EIO);
 }

 return gspca_dev->usb_buf[0];
}
