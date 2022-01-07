
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct gspca_dev {int * usb_buf; } ;


 int D_FRAM ;
 int gspca_dbg (struct gspca_dev*,int ,char*,int ) ;
 int msleep (int) ;
 int reg_r (struct gspca_dev*,int,int,int) ;
 int reg_w_riv (struct gspca_dev*,int ,int ,int ) ;

__attribute__((used)) static void spca504_acknowledged_command(struct gspca_dev *gspca_dev,
        u8 req, u16 idx, u16 val)
{
 reg_w_riv(gspca_dev, req, idx, val);
 reg_r(gspca_dev, 0x01, 0x0001, 1);
 gspca_dbg(gspca_dev, D_FRAM, "before wait 0x%04x\n",
    gspca_dev->usb_buf[0]);
 reg_w_riv(gspca_dev, req, idx, val);

 msleep(200);
 reg_r(gspca_dev, 0x01, 0x0001, 1);
 gspca_dbg(gspca_dev, D_FRAM, "after wait 0x%04x\n",
    gspca_dev->usb_buf[0]);
}
