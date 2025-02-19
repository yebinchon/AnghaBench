
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps6507x_dev {int * dev; int write_dev; int read_dev; struct i2c_client* i2c_client; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct tps6507x_dev* devm_kzalloc (int *,int,int ) ;
 int devm_mfd_add_devices (int *,int,int ,int ,int *,int ,int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct tps6507x_dev*) ;
 int tps6507x_devs ;
 int tps6507x_i2c_read_device ;
 int tps6507x_i2c_write_device ;

__attribute__((used)) static int tps6507x_i2c_probe(struct i2c_client *i2c,
       const struct i2c_device_id *id)
{
 struct tps6507x_dev *tps6507x;

 tps6507x = devm_kzalloc(&i2c->dev, sizeof(struct tps6507x_dev),
    GFP_KERNEL);
 if (tps6507x == ((void*)0))
  return -ENOMEM;

 i2c_set_clientdata(i2c, tps6507x);
 tps6507x->dev = &i2c->dev;
 tps6507x->i2c_client = i2c;
 tps6507x->read_dev = tps6507x_i2c_read_device;
 tps6507x->write_dev = tps6507x_i2c_write_device;

 return devm_mfd_add_devices(tps6507x->dev, -1, tps6507x_devs,
        ARRAY_SIZE(tps6507x_devs), ((void*)0), 0, ((void*)0));
}
