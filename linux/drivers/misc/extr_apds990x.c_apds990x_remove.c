
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct i2c_client {int dev; int irq; } ;
struct apds990x_chip {int regs; TYPE_2__* pdata; TYPE_1__* client; } ;
struct TYPE_6__ {int kobj; } ;
struct TYPE_5__ {int (* release_resources ) () ;} ;
struct TYPE_4__ {TYPE_3__ dev; } ;


 int ARRAY_SIZE (int ) ;
 int apds990x_attribute_group ;
 int apds990x_chip_off (struct apds990x_chip*) ;
 int free_irq (int ,struct apds990x_chip*) ;
 struct apds990x_chip* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (struct apds990x_chip*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_set_suspended (int *) ;
 int pm_runtime_suspended (int *) ;
 int regulator_bulk_free (int ,int ) ;
 int stub1 () ;
 int sysfs_remove_group (int *,int ) ;

__attribute__((used)) static int apds990x_remove(struct i2c_client *client)
{
 struct apds990x_chip *chip = i2c_get_clientdata(client);

 free_irq(client->irq, chip);
 sysfs_remove_group(&chip->client->dev.kobj,
   apds990x_attribute_group);

 if (chip->pdata && chip->pdata->release_resources)
  chip->pdata->release_resources();

 if (!pm_runtime_suspended(&client->dev))
  apds990x_chip_off(chip);

 pm_runtime_disable(&client->dev);
 pm_runtime_set_suspended(&client->dev);

 regulator_bulk_free(ARRAY_SIZE(chip->regs), chip->regs);

 kfree(chip);
 return 0;
}
