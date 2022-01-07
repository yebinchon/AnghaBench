
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct max6875_data {int* data; int valid; int update_lock; int * last_updated; } ;
struct i2c_client {int adapter; int dev; } ;


 int I2C_FUNC_SMBUS_READ_I2C_BLOCK ;
 int MAX6875_CMD_BLK_READ ;
 int SLICE_BITS ;
 int SLICE_SIZE ;
 int USER_EEPROM_BASE ;
 int USER_EEPROM_SLICES ;
 int dev_dbg (int *,char*,int) ;
 int dev_err (int *,char*) ;
 scalar_t__ i2c_check_functionality (int ,int ) ;
 struct max6875_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_read_byte (struct i2c_client*) ;
 int i2c_smbus_read_i2c_block_data (struct i2c_client*,int ,int,int*) ;
 scalar_t__ i2c_smbus_write_byte_data (struct i2c_client*,int,int) ;
 int jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ time_after (int ,int ) ;

__attribute__((used)) static void max6875_update_slice(struct i2c_client *client, int slice)
{
 struct max6875_data *data = i2c_get_clientdata(client);
 int i, j, addr;
 u8 *buf;

 if (slice >= USER_EEPROM_SLICES)
  return;

 mutex_lock(&data->update_lock);

 buf = &data->data[slice << SLICE_BITS];

 if (!(data->valid & (1 << slice)) ||
     time_after(jiffies, data->last_updated[slice])) {

  dev_dbg(&client->dev, "Starting update of slice %u\n", slice);

  data->valid &= ~(1 << slice);

  addr = USER_EEPROM_BASE + (slice << SLICE_BITS);


  if (i2c_smbus_write_byte_data(client, addr >> 8, addr & 0xFF)) {
   dev_err(&client->dev, "address set failed\n");
   goto exit_up;
  }

  if (i2c_check_functionality(client->adapter,
         I2C_FUNC_SMBUS_READ_I2C_BLOCK)) {
   if (i2c_smbus_read_i2c_block_data(client,
         MAX6875_CMD_BLK_READ,
         SLICE_SIZE,
         buf) != SLICE_SIZE) {
    goto exit_up;
   }
  } else {
   for (i = 0; i < SLICE_SIZE; i++) {
    j = i2c_smbus_read_byte(client);
    if (j < 0) {
     goto exit_up;
    }
    buf[i] = j;
   }
  }
  data->last_updated[slice] = jiffies;
  data->valid |= (1 << slice);
 }
exit_up:
 mutex_unlock(&data->update_lock);
}
