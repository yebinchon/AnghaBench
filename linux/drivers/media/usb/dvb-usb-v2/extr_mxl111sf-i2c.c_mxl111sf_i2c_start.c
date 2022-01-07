
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxl111sf_state {int dummy; } ;


 int SW_I2C_ADDR ;
 int SW_I2C_EN ;
 int SW_SCL_OUT ;
 int SW_SDA_OUT ;
 int mxl111sf_write_reg (struct mxl111sf_state*,int ,int) ;
 scalar_t__ mxl_fail (int) ;
 int mxl_i2c (char*) ;

__attribute__((used)) static int mxl111sf_i2c_start(struct mxl111sf_state *state)
{
 int ret;

 mxl_i2c("()");

 ret = mxl111sf_write_reg(state, SW_I2C_ADDR,
     0x10 | SW_I2C_EN | SW_SCL_OUT | SW_SDA_OUT);
 if (mxl_fail(ret))
  goto fail;

 ret = mxl111sf_write_reg(state, SW_I2C_ADDR,
     0x10 | SW_I2C_EN | SW_SCL_OUT);
 if (mxl_fail(ret))
  goto fail;

 ret = mxl111sf_write_reg(state, SW_I2C_ADDR,
     0x10 | SW_I2C_EN);
 mxl_fail(ret);
fail:
 return ret;
}
