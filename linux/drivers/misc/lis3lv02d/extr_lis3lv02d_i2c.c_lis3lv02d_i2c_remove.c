
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct lis3lv02d_platform_data {int (* release_resources ) () ;} ;
struct lis3lv02d {int regulators; } ;
struct TYPE_4__ {struct lis3lv02d_platform_data* platform_data; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct TYPE_5__ {int regulators; } ;


 int ARRAY_SIZE (int ) ;
 struct lis3lv02d* i2c_get_clientdata (struct i2c_client*) ;
 TYPE_2__ lis3_dev ;
 int lis3lv02d_joystick_disable (struct lis3lv02d*) ;
 int lis3lv02d_remove_fs (TYPE_2__*) ;
 int regulator_bulk_free (int ,int ) ;
 int stub1 () ;

__attribute__((used)) static int lis3lv02d_i2c_remove(struct i2c_client *client)
{
 struct lis3lv02d *lis3 = i2c_get_clientdata(client);
 struct lis3lv02d_platform_data *pdata = client->dev.platform_data;

 if (pdata && pdata->release_resources)
  pdata->release_resources();

 lis3lv02d_joystick_disable(lis3);
 lis3lv02d_remove_fs(&lis3_dev);

 regulator_bulk_free(ARRAY_SIZE(lis3->regulators),
       lis3_dev.regulators);
 return 0;
}
