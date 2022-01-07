
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct i2c_client {int dev; } ;
struct TYPE_2__ {int lock; struct i2c_client* client; } ;


 int GPIO3_DIR_INPUT ;
 int GPIO_CTRL_SLPCTLEN ;
 int MENELAUS_GPIO_CTRL ;
 int MENELAUS_SLEEP_CTRL2 ;
 int dev_dbg (int *,char*,int) ;
 int menelaus_read_reg (int ) ;
 int menelaus_write_reg (int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* the_menelaus ;

int menelaus_set_regulator_sleep(int enable, u32 val)
{
 int t, ret;
 struct i2c_client *c = the_menelaus->client;

 mutex_lock(&the_menelaus->lock);
 ret = menelaus_write_reg(MENELAUS_SLEEP_CTRL2, val);
 if (ret < 0)
  goto out;

 dev_dbg(&c->dev, "regulator sleep configuration: %02x\n", val);

 ret = menelaus_read_reg(MENELAUS_GPIO_CTRL);
 if (ret < 0)
  goto out;
 t = (GPIO_CTRL_SLPCTLEN | GPIO3_DIR_INPUT);
 if (enable)
  ret |= t;
 else
  ret &= ~t;
 ret = menelaus_write_reg(MENELAUS_GPIO_CTRL, ret);
out:
 mutex_unlock(&the_menelaus->lock);
 return ret;
}
