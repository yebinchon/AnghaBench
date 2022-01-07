
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda10071_dev {int cmd_execute_mutex; int regmap; int warm; struct i2c_client* client; } ;
struct tda10071_cmd {int len; int args; } ;
struct i2c_client {int dev; } ;


 int EFAULT ;
 int ETIMEDOUT ;
 int dev_dbg (int *,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_bulk_write (int ,int,int ,int ) ;
 int regmap_read (int ,int,unsigned int*) ;
 int regmap_write (int ,int,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int tda10071_cmd_execute(struct tda10071_dev *dev,
 struct tda10071_cmd *cmd)
{
 struct i2c_client *client = dev->client;
 int ret, i;
 unsigned int uitmp;

 if (!dev->warm) {
  ret = -EFAULT;
  goto error;
 }

 mutex_lock(&dev->cmd_execute_mutex);


 ret = regmap_bulk_write(dev->regmap, 0x00, cmd->args, cmd->len);
 if (ret)
  goto error_mutex_unlock;


 ret = regmap_write(dev->regmap, 0x1f, 1);
 if (ret)
  goto error_mutex_unlock;


 for (i = 1000, uitmp = 1; i && uitmp; i--) {
  ret = regmap_read(dev->regmap, 0x1f, &uitmp);
  if (ret)
   goto error_mutex_unlock;

  usleep_range(200, 5000);
 }

 mutex_unlock(&dev->cmd_execute_mutex);
 dev_dbg(&client->dev, "loop=%d\n", i);

 if (i == 0) {
  ret = -ETIMEDOUT;
  goto error;
 }

 return ret;
error_mutex_unlock:
 mutex_unlock(&dev->cmd_execute_mutex);
error:
 dev_dbg(&client->dev, "failed=%d\n", ret);
 return ret;
}
