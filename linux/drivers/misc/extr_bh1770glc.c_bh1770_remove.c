
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct i2c_client {int dev; int irq; } ;
struct bh1770_chip {int prox_work; TYPE_1__* pdata; TYPE_3__* client; } ;
struct TYPE_5__ {int kobj; } ;
struct TYPE_6__ {TYPE_2__ dev; } ;
struct TYPE_4__ {int (* release_resources ) () ;} ;


 int bh1770_attribute_group ;
 int bh1770_chip_off (struct bh1770_chip*) ;
 int cancel_delayed_work_sync (int *) ;
 int free_irq (int ,struct bh1770_chip*) ;
 struct bh1770_chip* i2c_get_clientdata (struct i2c_client*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_set_suspended (int *) ;
 int pm_runtime_suspended (int *) ;
 int stub1 () ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int bh1770_remove(struct i2c_client *client)
{
 struct bh1770_chip *chip = i2c_get_clientdata(client);

 free_irq(client->irq, chip);

 sysfs_remove_group(&chip->client->dev.kobj,
   &bh1770_attribute_group);

 if (chip->pdata->release_resources)
  chip->pdata->release_resources();

 cancel_delayed_work_sync(&chip->prox_work);

 if (!pm_runtime_suspended(&client->dev))
  bh1770_chip_off(chip);

 pm_runtime_disable(&client->dev);
 pm_runtime_set_suspended(&client->dev);

 return 0;
}
