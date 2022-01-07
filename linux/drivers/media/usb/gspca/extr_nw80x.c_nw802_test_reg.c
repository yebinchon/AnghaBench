
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct gspca_dev {scalar_t__* usb_buf; } ;


 int reg_r (struct gspca_dev*,int ,int) ;
 int reg_w (struct gspca_dev*,int ,scalar_t__*,int) ;

__attribute__((used)) static int nw802_test_reg(struct gspca_dev *gspca_dev,
   u16 index,
   u8 value)
{

 reg_w(gspca_dev, index, &value, 1);


 reg_r(gspca_dev, index, 1);

 return gspca_dev->usb_buf[0] == value;
}
