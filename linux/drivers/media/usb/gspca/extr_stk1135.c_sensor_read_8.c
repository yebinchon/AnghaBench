
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gspca_dev {int dummy; } ;


 scalar_t__ STK1135_REG_SBUSR ;
 scalar_t__ STK1135_REG_SICTL ;
 int pr_err (char*) ;
 int reg_r (struct gspca_dev*,scalar_t__) ;
 int reg_w (struct gspca_dev*,scalar_t__,int) ;
 scalar_t__ stk1135_serial_wait_ready (struct gspca_dev*) ;

__attribute__((used)) static u8 sensor_read_8(struct gspca_dev *gspca_dev, u8 addr)
{
 reg_w(gspca_dev, STK1135_REG_SBUSR, addr);

 reg_w(gspca_dev, STK1135_REG_SICTL, 0x20);

 if (stk1135_serial_wait_ready(gspca_dev)) {
  pr_err("Sensor read failed\n");
  return 0;
 }

 return reg_r(gspca_dev, STK1135_REG_SBUSR + 1);
}
