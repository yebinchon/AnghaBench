
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {TYPE_1__* cam_mode; } ;
struct gspca_dev {size_t curr_mode; int usb_err; TYPE_2__ cam; } ;
struct TYPE_3__ {int priv; } ;


 int reg_r (struct gspca_dev*,int,int,int) ;
 int reg_w (struct gspca_dev*,int,int,int) ;
 int reg_wb (struct gspca_dev*,int,int,int,int) ;
 int wait_status_0 (struct gspca_dev*) ;
 int wait_status_1 (struct gspca_dev*) ;

__attribute__((used)) static int sd_isoc_init(struct gspca_dev *gspca_dev)
{
 u8 mode;

 reg_r(gspca_dev, 0x00, 0x2520, 1);
 wait_status_0(gspca_dev);
 reg_w(gspca_dev, 0xc5, 0x0003, 0x0000);
 wait_status_1(gspca_dev);

 wait_status_0(gspca_dev);
 mode = gspca_dev->cam.cam_mode[gspca_dev->curr_mode].priv;
 reg_wb(gspca_dev, 0x25, 0x0000, 0x0004, mode);
 reg_r(gspca_dev, 0x25, 0x0004, 1);
 reg_wb(gspca_dev, 0x27, 0x0000, 0x0000, 0x06);
 reg_r(gspca_dev, 0x27, 0x0000, 1);




 return gspca_dev->usb_err;
}
