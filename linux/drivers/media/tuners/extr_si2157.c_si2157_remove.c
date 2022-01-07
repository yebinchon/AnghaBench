
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct si2157_dev {int ent; scalar_t__ mdev; int stat_work; struct dvb_frontend* fe; } ;
struct i2c_client {int dev; } ;
struct dvb_tuner_ops {int dummy; } ;
struct TYPE_2__ {int tuner_ops; } ;
struct dvb_frontend {int * tuner_priv; TYPE_1__ ops; } ;


 int cancel_delayed_work_sync (int *) ;
 int dev_dbg (int *,char*) ;
 struct si2157_dev* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (struct si2157_dev*) ;
 int media_device_unregister_entity (int *) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int si2157_remove(struct i2c_client *client)
{
 struct si2157_dev *dev = i2c_get_clientdata(client);
 struct dvb_frontend *fe = dev->fe;

 dev_dbg(&client->dev, "\n");


 cancel_delayed_work_sync(&dev->stat_work);






 memset(&fe->ops.tuner_ops, 0, sizeof(struct dvb_tuner_ops));
 fe->tuner_priv = ((void*)0);
 kfree(dev);

 return 0;
}
