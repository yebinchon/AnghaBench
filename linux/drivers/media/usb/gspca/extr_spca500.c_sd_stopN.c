
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int * usb_buf; } ;


 int D_STREAM ;
 int gspca_dbg (struct gspca_dev*,int ,char*,int ) ;
 int reg_r (struct gspca_dev*,int,int) ;
 int reg_w (struct gspca_dev*,int,int,int) ;

__attribute__((used)) static void sd_stopN(struct gspca_dev *gspca_dev)
{
 reg_w(gspca_dev, 0, 0x8003, 0x00);


 reg_w(gspca_dev, 0x00, 0x8000, 0x0004);
 reg_r(gspca_dev, 0x8000, 1);
 gspca_dbg(gspca_dev, D_STREAM, "stop SPCA500 done reg8000: 0x%2x\n",
    gspca_dev->usb_buf[0]);
}
