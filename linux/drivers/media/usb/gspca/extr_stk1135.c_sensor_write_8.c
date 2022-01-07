
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gspca_dev {int dummy; } ;


 scalar_t__ STK1135_REG_SBUSW ;
 scalar_t__ STK1135_REG_SICTL ;
 int pr_err (char*) ;
 int reg_w (struct gspca_dev*,scalar_t__,int) ;
 scalar_t__ stk1135_serial_wait_ready (struct gspca_dev*) ;

__attribute__((used)) static void sensor_write_8(struct gspca_dev *gspca_dev, u8 addr, u8 data)
{

 reg_w(gspca_dev, STK1135_REG_SBUSW, addr);
 reg_w(gspca_dev, STK1135_REG_SBUSW + 1, data);

 reg_w(gspca_dev, STK1135_REG_SICTL, 0x01);

 if (stk1135_serial_wait_ready(gspca_dev)) {
  pr_err("Sensor write failed\n");
  return;
 }
}
