
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct si2157_dev {int if_frequency; } ;
struct i2c_client {int dummy; } ;
struct dvb_frontend {struct i2c_client* tuner_priv; } ;


 struct si2157_dev* i2c_get_clientdata (struct i2c_client*) ;

__attribute__((used)) static int si2157_get_if_frequency(struct dvb_frontend *fe, u32 *frequency)
{
 struct i2c_client *client = fe->tuner_priv;
 struct si2157_dev *dev = i2c_get_clientdata(client);

 *frequency = dev->if_frequency;
 return 0;
}
