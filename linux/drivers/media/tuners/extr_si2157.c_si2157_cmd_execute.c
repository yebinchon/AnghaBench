
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si2157_dev {int i2c_mutex; } ;
struct si2157_cmd {int wlen; int* args; int rlen; } ;
struct i2c_client {int dev; } ;


 int EREMOTEIO ;
 int ETIMEDOUT ;
 int TIMEOUT ;
 int dev_dbg (int *,char*,int) ;
 struct si2157_dev* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_master_recv (struct i2c_client*,int*,int) ;
 int i2c_master_send (struct i2c_client*,int*,int) ;
 unsigned long jiffies ;
 int jiffies_to_msecs (unsigned long) ;
 unsigned long msecs_to_jiffies (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int si2157_cmd_execute(struct i2c_client *client, struct si2157_cmd *cmd)
{
 struct si2157_dev *dev = i2c_get_clientdata(client);
 int ret;
 unsigned long timeout;

 mutex_lock(&dev->i2c_mutex);

 if (cmd->wlen) {

  ret = i2c_master_send(client, cmd->args, cmd->wlen);
  if (ret < 0) {
   goto err_mutex_unlock;
  } else if (ret != cmd->wlen) {
   ret = -EREMOTEIO;
   goto err_mutex_unlock;
  }
 }

 if (cmd->rlen) {


  timeout = jiffies + msecs_to_jiffies(80);
  while (!time_after(jiffies, timeout)) {
   ret = i2c_master_recv(client, cmd->args, cmd->rlen);
   if (ret < 0) {
    goto err_mutex_unlock;
   } else if (ret != cmd->rlen) {
    ret = -EREMOTEIO;
    goto err_mutex_unlock;
   }


   if ((cmd->args[0] >> 7) & 0x01)
    break;
  }

  dev_dbg(&client->dev, "cmd execution took %d ms\n",
    jiffies_to_msecs(jiffies) -
    (jiffies_to_msecs(timeout) - 80));

  if (!((cmd->args[0] >> 7) & 0x01)) {
   ret = -ETIMEDOUT;
   goto err_mutex_unlock;
  }
 }

 mutex_unlock(&dev->i2c_mutex);
 return 0;

err_mutex_unlock:
 mutex_unlock(&dev->i2c_mutex);
 dev_dbg(&client->dev, "failed=%d\n", ret);
 return ret;
}
