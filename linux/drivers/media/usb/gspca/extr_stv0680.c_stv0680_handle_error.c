
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int * usb_buf; } ;


 int gspca_err (struct gspca_dev*,char*,int ,int ) ;
 int stv_sndctrl (struct gspca_dev*,int ,int,int ,int) ;

__attribute__((used)) static int stv0680_handle_error(struct gspca_dev *gspca_dev, int ret)
{
 stv_sndctrl(gspca_dev, 0, 0x80, 0, 0x02);
 gspca_err(gspca_dev, "last error: %i,  command = 0x%x\n",
    gspca_dev->usb_buf[0], gspca_dev->usb_buf[1]);
 return ret;
}
