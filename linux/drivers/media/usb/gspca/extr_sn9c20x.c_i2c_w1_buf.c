
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_reg_u8 {int val; int reg; } ;
struct gspca_dev {int dummy; } ;


 int i2c_w1 (struct gspca_dev*,int ,int ) ;

__attribute__((used)) static void i2c_w1_buf(struct gspca_dev *gspca_dev,
   const struct i2c_reg_u8 *buf, int sz)
{
 while (--sz >= 0) {
  i2c_w1(gspca_dev, buf->reg, buf->val);
  buf++;
 }
}
