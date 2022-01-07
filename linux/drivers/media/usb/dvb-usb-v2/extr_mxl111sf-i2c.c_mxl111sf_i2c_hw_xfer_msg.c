
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mxl111sf_state {int dummy; } ;
struct i2c_msg {int addr; int flags; int len; int* buf; } ;


 int EIO ;
 scalar_t__ HWI2C400 ;
 int I2C_CONTROL_REG ;
 int I2C_DATA_REG ;
 int I2C_MUX_REG ;
 int I2C_M_RD ;
 int I2C_SLAVE_ADDR_REG ;
 int USB_END_I2C_CMD ;
 int USB_READ_I2C_CMD ;
 int USB_WRITE_I2C_CMD ;
 int mxl111sf_i2c_check_status (struct mxl111sf_state*) ;
 int mxl111sf_i2c_get_data (struct mxl111sf_state*,int ,int*,int*) ;
 int mxl111sf_i2c_readagain (struct mxl111sf_state*,int,int*) ;
 int mxl111sf_i2c_send_data (struct mxl111sf_state*,int ,int*) ;
 int mxl_i2c (char*,...) ;

__attribute__((used)) static int mxl111sf_i2c_hw_xfer_msg(struct mxl111sf_state *state,
        struct i2c_msg *msg)
{
 int i, k, ret = 0;
 u16 index = 0;
 u8 buf[26];
 u8 i2c_r_data[24];
 u16 block_len;
 u16 left_over_len;
 u8 rd_status[8];
 u8 ret_status;
 u8 readbuff[26];

 mxl_i2c("addr: 0x%02x, read buff len: %d, write buff len: %d",
  msg->addr, (msg->flags & I2C_M_RD) ? msg->len : 0,
  (!(msg->flags & I2C_M_RD)) ? msg->len : 0);

 for (index = 0; index < 26; index++)
  buf[index] = USB_END_I2C_CMD;


 buf[0] = USB_WRITE_I2C_CMD;
 buf[1] = 0x00;


 buf[2] = I2C_MUX_REG;
 buf[3] = 0x80;
 buf[4] = 0x00;


 buf[5] = I2C_MUX_REG;
 buf[6] = 0x81;
 buf[7] = 0x00;


 buf[8] = 0x14;
 buf[9] = 0xff;
 buf[10] = 0x00;






 buf[11] = 0x24;
 buf[12] = 0xF7;
 buf[13] = 0x00;

 ret = mxl111sf_i2c_send_data(state, 0, buf);


 if (!(msg->flags & I2C_M_RD) && (msg->len > 0)) {
  mxl_i2c("%d\t%02x", msg->len, msg->buf[0]);


  buf[2] = I2C_CONTROL_REG;
  buf[3] = 0x5E;
  buf[4] = (HWI2C400) ? 0x03 : 0x0D;


  buf[5] = I2C_SLAVE_ADDR_REG;
  buf[6] = (msg->addr);
  buf[7] = 0x00;
  buf[8] = USB_END_I2C_CMD;
  ret = mxl111sf_i2c_send_data(state, 0, buf);


  if (mxl111sf_i2c_check_status(state) == 1) {
   mxl_i2c("NACK writing slave address %02x",
    msg->addr);

   buf[2] = I2C_CONTROL_REG;
   buf[3] = 0x4E;
   buf[4] = (HWI2C400) ? 0x03 : 0x0D;
   ret = -EIO;
   goto exit;
  }




  block_len = (msg->len / 8);
  left_over_len = (msg->len % 8);

  mxl_i2c("block_len %d, left_over_len %d",
   block_len, left_over_len);

  for (index = 0; index < block_len; index++) {
   for (i = 0; i < 8; i++) {

    buf[2+(i*3)] = I2C_DATA_REG;
    buf[3+(i*3)] = msg->buf[(index*8)+i];
    buf[4+(i*3)] = 0x00;
   }

   ret = mxl111sf_i2c_send_data(state, 0, buf);


   if (mxl111sf_i2c_check_status(state) == 1) {
    mxl_i2c("NACK writing slave address %02x",
     msg->addr);


    buf[2] = I2C_CONTROL_REG;
    buf[3] = 0x4E;
    buf[4] = (HWI2C400) ? 0x03 : 0x0D;
    ret = -EIO;
    goto exit;
   }

  }

  if (left_over_len) {
   for (k = 0; k < 26; k++)
    buf[k] = USB_END_I2C_CMD;

   buf[0] = 0x99;
   buf[1] = 0x00;

   for (i = 0; i < left_over_len; i++) {
    buf[2+(i*3)] = I2C_DATA_REG;
    buf[3+(i*3)] = msg->buf[(index*8)+i];
    mxl_i2c("index = %d %d data %d",
     index, i, msg->buf[(index*8)+i]);
    buf[4+(i*3)] = 0x00;
   }
   ret = mxl111sf_i2c_send_data(state, 0, buf);


   if (mxl111sf_i2c_check_status(state) == 1) {
    mxl_i2c("NACK writing slave address %02x",
     msg->addr);


    buf[2] = I2C_CONTROL_REG;
    buf[3] = 0x4E;
    buf[4] = (HWI2C400) ? 0x03 : 0x0D;
    ret = -EIO;
    goto exit;
   }

  }


  buf[2] = I2C_CONTROL_REG;
  buf[3] = 0x4E;
  buf[4] = (HWI2C400) ? 0x03 : 0x0D;

 }


 if ((msg->flags & I2C_M_RD) && (msg->len > 0)) {
  mxl_i2c("read buf len %d", msg->len);



  buf[2] = I2C_CONTROL_REG;
  buf[3] = 0xDF;
  buf[4] = (HWI2C400) ? 0x03 : 0x0D;


  buf[5] = 0x14;
  buf[6] = (msg->len & 0xFF);
  buf[7] = 0;


  buf[8] = I2C_SLAVE_ADDR_REG;
  buf[9] = msg->addr;
  buf[10] = 0x00;
  buf[11] = USB_END_I2C_CMD;
  ret = mxl111sf_i2c_send_data(state, 0, buf);


  if (mxl111sf_i2c_check_status(state) == 1) {
   mxl_i2c("NACK reading slave address %02x",
    msg->addr);


   buf[2] = I2C_CONTROL_REG;
   buf[3] = 0xC7;
   buf[4] = (HWI2C400) ? 0x03 : 0x0D;
   ret = -EIO;
   goto exit;
  }




  block_len = ((msg->len) / 8);
  left_over_len = ((msg->len) % 8);
  index = 0;

  mxl_i2c("block_len %d, left_over_len %d",
   block_len, left_over_len);


  buf[0] = USB_READ_I2C_CMD;
  buf[1] = 0x00;

  for (index = 0; index < block_len; index++) {

   for (i = 0; i < 8; i++) {
    buf[2+(i*3)] = I2C_DATA_REG;
    buf[3+(i*3)] = 0x00;
    buf[4+(i*3)] = 0x00;
   }

   ret = mxl111sf_i2c_get_data(state, 0, buf, i2c_r_data);


   if (mxl111sf_i2c_check_status(state) == 1) {
    mxl_i2c("NACK reading slave address %02x",
     msg->addr);


    buf[2] = I2C_CONTROL_REG;
    buf[3] = 0xC7;
    buf[4] = (HWI2C400) ? 0x03 : 0x0D;
    ret = -EIO;
    goto exit;
   }


   for (i = 0; i < 8; i++) {
    rd_status[i] = i2c_r_data[(i*3)+2];

    if (rd_status[i] == 0x04) {
     if (i < 7) {
      mxl_i2c("i2c fifo empty! @ %d",
       i);
      msg->buf[(index*8)+i] =
       i2c_r_data[(i*3)+1];

      ret_status =
       mxl111sf_i2c_readagain(
        state, 8-(i+1),
        readbuff);
      if (ret_status == 1) {
       for (k = 0;
            k < 8-(i+1);
            k++) {

     msg->buf[(index*8)+(k+i+1)] =
      readbuff[k];
     mxl_i2c("read data: %02x\t %02x",
      msg->buf[(index*8)+(k+i)],
      (index*8)+(k+i));
     mxl_i2c("read data: %02x\t %02x",
      msg->buf[(index*8)+(k+i+1)],
      readbuff[k]);

       }
       goto stop_copy;
      } else {
       mxl_i2c("readagain ERROR!");
      }
     } else {
      msg->buf[(index*8)+i] =
       i2c_r_data[(i*3)+1];
     }
    } else {
     msg->buf[(index*8)+i] =
      i2c_r_data[(i*3)+1];
    }
   }
stop_copy:
   ;

  }

  if (left_over_len) {
   for (k = 0; k < 26; k++)
    buf[k] = USB_END_I2C_CMD;

   buf[0] = 0xDD;
   buf[1] = 0x00;

   for (i = 0; i < left_over_len; i++) {
    buf[2+(i*3)] = I2C_DATA_REG;
    buf[3+(i*3)] = 0x00;
    buf[4+(i*3)] = 0x00;
   }
   ret = mxl111sf_i2c_get_data(state, 0, buf,
          i2c_r_data);


   if (mxl111sf_i2c_check_status(state) == 1) {
    mxl_i2c("NACK reading slave address %02x",
     msg->addr);


    buf[2] = I2C_CONTROL_REG;
    buf[3] = 0xC7;
    buf[4] = (HWI2C400) ? 0x03 : 0x0D;
    ret = -EIO;
    goto exit;
   }

   for (i = 0; i < left_over_len; i++) {
    msg->buf[(block_len*8)+i] =
     i2c_r_data[(i*3)+1];
    mxl_i2c("read data: %02x\t %02x",
     i2c_r_data[(i*3)+1],
     i2c_r_data[(i*3)+2]);
   }
  }



  buf[0] = USB_WRITE_I2C_CMD;
  buf[1] = 0x00;


  buf[2] = I2C_CONTROL_REG;
  buf[3] = 0x17;
  buf[4] = (HWI2C400) ? 0x03 : 0x0D;

  buf[5] = USB_END_I2C_CMD;
  ret = mxl111sf_i2c_send_data(state, 0, buf);


  buf[2] = I2C_CONTROL_REG;
  buf[3] = 0xC7;
  buf[4] = (HWI2C400) ? 0x03 : 0x0D;

 }
exit:

 buf[0] = USB_WRITE_I2C_CMD;
 buf[1] = 0x00;


 buf[5] = USB_END_I2C_CMD;
 mxl111sf_i2c_send_data(state, 0, buf);


 buf[2] = I2C_CONTROL_REG;
 buf[3] = 0xDF;
 buf[4] = 0x03;


 buf[5] = I2C_MUX_REG;
 buf[6] = 0x00;
 buf[7] = 0x00;


 buf[8] = USB_END_I2C_CMD;
 mxl111sf_i2c_send_data(state, 0, buf);


 buf[2] = I2C_MUX_REG;
 buf[3] = 0x81;
 buf[4] = 0x00;


 buf[5] = I2C_MUX_REG;
 buf[6] = 0x00;
 buf[7] = 0x00;


 buf[8] = I2C_MUX_REG;
 buf[9] = 0x00;
 buf[10] = 0x00;

 buf[11] = USB_END_I2C_CMD;
 mxl111sf_i2c_send_data(state, 0, buf);

 return ret;
}
