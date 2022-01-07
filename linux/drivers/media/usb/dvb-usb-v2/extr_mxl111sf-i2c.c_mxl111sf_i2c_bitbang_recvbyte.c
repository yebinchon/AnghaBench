
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mxl111sf_state {int dummy; } ;


 int SW_I2C_ADDR ;
 int SW_I2C_BUSY_ADDR ;
 int SW_I2C_EN ;
 int SW_SCL_OUT ;
 int SW_SDA_IN ;
 int SW_SDA_OUT ;
 int mxl111sf_read_reg (struct mxl111sf_state*,int ,int*) ;
 int mxl111sf_write_reg (struct mxl111sf_state*,int ,int) ;
 scalar_t__ mxl_fail (int) ;
 int mxl_i2c (char*) ;

__attribute__((used)) static int mxl111sf_i2c_bitbang_recvbyte(struct mxl111sf_state *state,
      u8 *pbyte)
{
 int i, ret;
 u8 byte = 0;
 u8 data = 0;

 mxl_i2c("()");

 *pbyte = 0;

 ret = mxl111sf_write_reg(state, SW_I2C_ADDR,
     0x10 | SW_I2C_EN | SW_SDA_OUT);
 if (mxl_fail(ret))
  goto fail;

 for (i = 0; i < 8; i++) {
  ret = mxl111sf_write_reg(state, SW_I2C_ADDR,
      0x10 | SW_I2C_EN |
      SW_SCL_OUT | SW_SDA_OUT);
  if (mxl_fail(ret))
   goto fail;

  ret = mxl111sf_read_reg(state, SW_I2C_BUSY_ADDR, &data);
  if (mxl_fail(ret))
   goto fail;

  if (data & SW_SDA_IN)
   byte |= (0x80 >> i);

  ret = mxl111sf_write_reg(state, SW_I2C_ADDR,
      0x10 | SW_I2C_EN | SW_SDA_OUT);
  if (mxl_fail(ret))
   goto fail;
 }
 *pbyte = byte;
fail:
 return ret;
}
