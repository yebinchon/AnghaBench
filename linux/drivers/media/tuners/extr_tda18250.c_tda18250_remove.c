
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tda18250_dev {struct dvb_frontend* fe; } ;
struct i2c_client {int dev; } ;
struct dvb_tuner_ops {int dummy; } ;
struct TYPE_2__ {int tuner_ops; } ;
struct dvb_frontend {int * tuner_priv; TYPE_1__ ops; } ;


 int dev_dbg (int *,char*) ;
 struct tda18250_dev* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (struct tda18250_dev*) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int tda18250_remove(struct i2c_client *client)
{
 struct tda18250_dev *dev = i2c_get_clientdata(client);
 struct dvb_frontend *fe = dev->fe;

 dev_dbg(&client->dev, "\n");

 memset(&fe->ops.tuner_ops, 0, sizeof(struct dvb_tuner_ops));
 fe->tuner_priv = ((void*)0);
 kfree(dev);

 return 0;
}
