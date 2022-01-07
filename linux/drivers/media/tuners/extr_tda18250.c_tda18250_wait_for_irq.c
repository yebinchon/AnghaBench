
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct tda18250_dev {int regmap; } ;
struct i2c_client {int dev; } ;
struct dvb_frontend {struct i2c_client* tuner_priv; } ;


 int ETIMEDOUT ;
 int R08_IRQ1 ;
 int dev_dbg (int *,char*,unsigned int,int,char*) ;
 struct tda18250_dev* i2c_get_clientdata (struct i2c_client*) ;
 unsigned long jiffies ;
 int jiffies_to_msecs (unsigned long) ;
 unsigned long msecs_to_jiffies (int) ;
 int msleep (int) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int tda18250_wait_for_irq(struct dvb_frontend *fe,
  int maxwait, int step, u8 irq)
{
 struct i2c_client *client = fe->tuner_priv;
 struct tda18250_dev *dev = i2c_get_clientdata(client);
 int ret;
 unsigned long timeout;
 bool triggered;
 unsigned int utmp;

 triggered = 0;
 timeout = jiffies + msecs_to_jiffies(maxwait);
 while (!time_after(jiffies, timeout)) {

  ret = regmap_read(dev->regmap, R08_IRQ1, &utmp);
  if (ret)
   goto err;
  if ((utmp & irq) == irq) {
   triggered = 1;
   break;
  }
  msleep(step);
 }

 dev_dbg(&client->dev, "waited IRQ (0x%02x) %d ms, triggered: %s", irq,
   jiffies_to_msecs(jiffies) -
   (jiffies_to_msecs(timeout) - maxwait),
   triggered ? "true" : "false");

 if (!triggered)
  return -ETIMEDOUT;

 return 0;
err:
 return ret;
}
