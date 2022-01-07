
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tua9001_dev {struct i2c_client* client; } ;
struct i2c_client {int dev; } ;
struct dvb_frontend {struct tua9001_dev* tuner_priv; } ;


 int dev_dbg (int *,char*) ;

__attribute__((used)) static int tua9001_get_if_frequency(struct dvb_frontend *fe, u32 *frequency)
{
 struct tua9001_dev *dev = fe->tuner_priv;
 struct i2c_client *client = dev->client;

 dev_dbg(&client->dev, "\n");

 *frequency = 0;
 return 0;
}
