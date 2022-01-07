
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct dvb_frontend* fe; } ;
struct m88rs6000t_dev {TYPE_1__ cfg; } ;
struct i2c_client {int dev; } ;
struct dvb_tuner_ops {int dummy; } ;
struct TYPE_4__ {int tuner_ops; } ;
struct dvb_frontend {int * tuner_priv; TYPE_2__ ops; } ;


 int dev_dbg (int *,char*) ;
 struct m88rs6000t_dev* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (struct m88rs6000t_dev*) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int m88rs6000t_remove(struct i2c_client *client)
{
 struct m88rs6000t_dev *dev = i2c_get_clientdata(client);
 struct dvb_frontend *fe = dev->cfg.fe;

 dev_dbg(&client->dev, "\n");

 memset(&fe->ops.tuner_ops, 0, sizeof(struct dvb_tuner_ops));
 fe->tuner_priv = ((void*)0);
 kfree(dev);

 return 0;
}
