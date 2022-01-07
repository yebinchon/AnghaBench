
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int dummy; } ;
struct gspca_dev {int dummy; } ;
typedef scalar_t__ s32 ;


 int i2c_w_mask (struct sd*,int,int,int) ;

__attribute__((used)) static void setautogain(struct gspca_dev *gspca_dev, s32 val)
{
 struct sd *sd = (struct sd *) gspca_dev;

 i2c_w_mask(sd, 0x13, val ? 0x05 : 0x00, 0x05);
}
