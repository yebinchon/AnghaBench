
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int dummy; } ;
struct gspca_dev {int dummy; } ;
typedef int __s32 ;


 int S5K83A_BRIGHTNESS ;
 int m5602_write_sensor (struct sd*,int ,int *,int) ;

__attribute__((used)) static int s5k83a_set_brightness(struct gspca_dev *gspca_dev, __s32 val)
{
 int err;
 u8 data[1];
 struct sd *sd = (struct sd *) gspca_dev;

 data[0] = val;
 err = m5602_write_sensor(sd, S5K83A_BRIGHTNESS, data, 1);
 return err;
}
