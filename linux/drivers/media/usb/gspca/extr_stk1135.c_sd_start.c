
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct sd {scalar_t__ pkt_seq; } ;
struct TYPE_2__ {int width; int height; } ;
struct gspca_dev {scalar_t__ usb_err; int alt; TYPE_1__ pixfmt; } ;


 int D_STREAM ;
 scalar_t__ STK1135_REG_CIEPO ;
 scalar_t__ STK1135_REG_CISPO ;
 scalar_t__ STK1135_REG_GCTRL ;
 scalar_t__ STK1135_REG_SCTRL ;
 int gspca_dbg (struct gspca_dev*,int ,char*,int ) ;
 int reg_w (struct gspca_dev*,scalar_t__,int) ;
 int reg_w_mask (struct gspca_dev*,scalar_t__,int,int) ;
 int stk1135_configure_clock (struct gspca_dev*) ;
 int stk1135_configure_mt9m112 (struct gspca_dev*) ;

__attribute__((used)) static int sd_start(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 u16 width, height;


 reg_w(gspca_dev, STK1135_REG_GCTRL, (1 << 5));

 stk1135_configure_clock(gspca_dev);


 reg_w(gspca_dev, STK1135_REG_CISPO + 0, 0x00);
 reg_w(gspca_dev, STK1135_REG_CISPO + 1, 0x00);
 reg_w(gspca_dev, STK1135_REG_CISPO + 2, 0x00);
 reg_w(gspca_dev, STK1135_REG_CISPO + 3, 0x00);


 width = gspca_dev->pixfmt.width;
 height = gspca_dev->pixfmt.height;
 reg_w(gspca_dev, STK1135_REG_CIEPO + 0, width & 0xff);
 reg_w(gspca_dev, STK1135_REG_CIEPO + 1, width >> 8);
 reg_w(gspca_dev, STK1135_REG_CIEPO + 2, height & 0xff);
 reg_w(gspca_dev, STK1135_REG_CIEPO + 3, height >> 8);


 reg_w(gspca_dev, STK1135_REG_SCTRL, 0x20);

 stk1135_configure_mt9m112(gspca_dev);


 reg_w_mask(gspca_dev, STK1135_REG_SCTRL, 0x80, 0x80);

 if (gspca_dev->usb_err >= 0)
  gspca_dbg(gspca_dev, D_STREAM, "camera started alt: 0x%02x\n",
     gspca_dev->alt);

 sd->pkt_seq = 0;

 return gspca_dev->usb_err;
}
