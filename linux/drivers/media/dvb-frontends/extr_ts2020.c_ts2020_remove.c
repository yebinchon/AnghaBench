
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ts2020_priv {int regmap; int stat_work; int dont_poll; } ;
struct i2c_client {int dev; } ;


 int cancel_delayed_work_sync (int *) ;
 int dev_dbg (int *,char*) ;
 struct ts2020_priv* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (struct ts2020_priv*) ;
 int regmap_exit (int ) ;

__attribute__((used)) static int ts2020_remove(struct i2c_client *client)
{
 struct ts2020_priv *dev = i2c_get_clientdata(client);

 dev_dbg(&client->dev, "\n");


 if (!dev->dont_poll)
  cancel_delayed_work_sync(&dev->stat_work);

 regmap_exit(dev->regmap);
 kfree(dev);
 return 0;
}
