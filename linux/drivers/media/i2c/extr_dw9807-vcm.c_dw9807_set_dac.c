
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int tx_data ;
struct i2c_client {int dev; } ;


 int DW9807_CTRL_DELAY_US ;
 int DW9807_MSB_ADDR ;
 int EBUSY ;
 int MAX_RETRY ;
 int dev_err (int *,char*,int) ;
 int dev_warn (int *,char*) ;
 int dw9807_i2c_check ;
 int i2c_master_send (struct i2c_client*,char const*,int) ;
 int readx_poll_timeout (int ,struct i2c_client*,int,int,int,int) ;

__attribute__((used)) static int dw9807_set_dac(struct i2c_client *client, u16 data)
{
 const char tx_data[3] = {
  DW9807_MSB_ADDR, ((data >> 8) & 0x03), (data & 0xff)
 };
 int val, ret;






 ret = readx_poll_timeout(dw9807_i2c_check, client, val, val <= 0,
   DW9807_CTRL_DELAY_US, MAX_RETRY * DW9807_CTRL_DELAY_US);

 if (ret || val < 0) {
  if (ret) {
   dev_warn(&client->dev,
    "Cannot do the write operation because VCM is busy\n");
  }

  return ret ? -EBUSY : val;
 }


 ret = i2c_master_send(client, tx_data, sizeof(tx_data));
 if (ret < 0) {
  dev_err(&client->dev,
   "I2C write MSB fail ret=%d\n", ret);

  return ret;
 }

 return 0;
}
