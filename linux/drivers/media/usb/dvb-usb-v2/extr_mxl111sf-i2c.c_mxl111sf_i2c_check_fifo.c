
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mxl111sf_state {int dummy; } ;


 int I2C_INT_STATUS_REG ;
 int I2C_MUX_REG ;
 int USB_END_I2C_CMD ;
 int USB_READ_I2C_CMD ;
 int mxl111sf_i2c_get_data (struct mxl111sf_state*,int ,int*,int*) ;
 int mxl_i2c (char*) ;

__attribute__((used)) static u8 mxl111sf_i2c_check_fifo(struct mxl111sf_state *state)
{
 u8 status = 0;
 u8 buf[26];

 mxl_i2c("()");

 buf[0] = USB_READ_I2C_CMD;
 buf[1] = 0x00;

 buf[2] = I2C_MUX_REG;
 buf[3] = 0x00;
 buf[4] = 0x00;

 buf[5] = I2C_INT_STATUS_REG;
 buf[6] = 0x00;
 buf[7] = 0x00;
 buf[8] = USB_END_I2C_CMD;

 mxl111sf_i2c_get_data(state, 0, buf, buf);

 if (0x08 == (buf[1] & 0x08))
  status = 1;

 if ((buf[5] & 0x02) == 0x02)
  mxl_i2c("(buf[5] & 0x02) == 0x02");

 return status;
}
