
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_6__ {int low_frequency; int * dev; int device_name; int device_kind; } ;
struct TYPE_5__ {int mb_off_out; int mb_size_out; int mb_off_in; int mb_size_in; int lock; } ;
struct mlxsw_i2c {TYPE_3__ bus_info; int * dev; TYPE_2__ cmd; scalar_t__ block_size; } ;
struct i2c_device_id {int name; } ;
struct i2c_client {int dev; int name; TYPE_1__* adapter; } ;
struct i2c_adapter_quirks {scalar_t__ max_read_len; scalar_t__ max_write_len; } ;
struct TYPE_4__ {struct i2c_adapter_quirks* quirks; } ;


 int EIO ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 scalar_t__ MLXSW_I2C_BLK_DEF ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,int ,int ,int ,int ,int ) ;
 struct mlxsw_i2c* devm_kzalloc (int *,int,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct mlxsw_i2c*) ;
 scalar_t__ max_t (int ,scalar_t__,int ) ;
 int min_t (int ,scalar_t__,scalar_t__) ;
 int mlxsw_core_bus_device_register (TYPE_3__*,int *,struct mlxsw_i2c*,int,int *) ;
 int mlxsw_i2c_bus ;
 int mlxsw_i2c_get_mbox (struct i2c_client*,struct mlxsw_i2c*) ;
 int mlxsw_i2c_wait_go_bit (struct i2c_client*,struct mlxsw_i2c*,scalar_t__*) ;
 int mlxsw_i2c_write_cmd (struct i2c_client*,struct mlxsw_i2c*,int) ;
 int mutex_init (int *) ;
 int u16 ;

__attribute__((used)) static int mlxsw_i2c_probe(struct i2c_client *client,
      const struct i2c_device_id *id)
{
 const struct i2c_adapter_quirks *quirks = client->adapter->quirks;
 struct mlxsw_i2c *mlxsw_i2c;
 u8 status;
 int err;

 mlxsw_i2c = devm_kzalloc(&client->dev, sizeof(*mlxsw_i2c), GFP_KERNEL);
 if (!mlxsw_i2c)
  return -ENOMEM;

 if (quirks) {
  if ((quirks->max_read_len &&
       quirks->max_read_len < MLXSW_I2C_BLK_DEF) ||
      (quirks->max_write_len &&
       quirks->max_write_len < MLXSW_I2C_BLK_DEF)) {
   dev_err(&client->dev, "Insufficient transaction buffer length\n");
   return -EOPNOTSUPP;
  }

  mlxsw_i2c->block_size = max_t(u16, MLXSW_I2C_BLK_DEF,
           min_t(u16, quirks->max_read_len,
          quirks->max_write_len));
 } else {
  mlxsw_i2c->block_size = MLXSW_I2C_BLK_DEF;
 }

 i2c_set_clientdata(client, mlxsw_i2c);
 mutex_init(&mlxsw_i2c->cmd.lock);
 err = mlxsw_i2c_write_cmd(client, mlxsw_i2c, 1);
 if (err) {
  dev_err(&client->dev, "Could not start transaction");
  goto errout;
 }


 err = mlxsw_i2c_wait_go_bit(client, mlxsw_i2c, &status);
 if (err) {
  dev_err(&client->dev, "HW semaphore is not released");
  goto errout;
 }


 if (status) {
  dev_err(&client->dev, "Bad transaction completion status %x\n",
   status);
  err = -EIO;
  goto errout;
 }


 err = mlxsw_i2c_get_mbox(client, mlxsw_i2c);
 if (err < 0) {
  dev_err(&client->dev, "Fail to get mailboxes\n");
  goto errout;
 }

 dev_info(&client->dev, "%s mb size=%x off=0x%08x out mb size=%x off=0x%08x\n",
   id->name, mlxsw_i2c->cmd.mb_size_in,
   mlxsw_i2c->cmd.mb_off_in, mlxsw_i2c->cmd.mb_size_out,
   mlxsw_i2c->cmd.mb_off_out);


 mlxsw_i2c->bus_info.device_kind = id->name;
 mlxsw_i2c->bus_info.device_name = client->name;
 mlxsw_i2c->bus_info.dev = &client->dev;
 mlxsw_i2c->bus_info.low_frequency = 1;
 mlxsw_i2c->dev = &client->dev;

 err = mlxsw_core_bus_device_register(&mlxsw_i2c->bus_info,
          &mlxsw_i2c_bus, mlxsw_i2c, 0,
          ((void*)0));
 if (err) {
  dev_err(&client->dev, "Fail to register core bus\n");
  return err;
 }

 return 0;

errout:
 i2c_set_clientdata(client, ((void*)0));

 return err;
}
