
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct gspca_dev {scalar_t__ usb_err; } ;


 int D_USBO ;
 int gspca_dbg (struct gspca_dev*,int ,char*,int ,int ,int ) ;
 int reg_w_i (struct gspca_dev*,int ,int ,int ) ;

__attribute__((used)) static void reg_w(struct gspca_dev *gspca_dev,
       u16 req,
       u16 value,
       u16 index)
{
 if (gspca_dev->usb_err < 0)
  return;
 gspca_dbg(gspca_dev, D_USBO, "SET %02x %04x %04x\n", req, value, index);
 reg_w_i(gspca_dev, req, value, index);
}
