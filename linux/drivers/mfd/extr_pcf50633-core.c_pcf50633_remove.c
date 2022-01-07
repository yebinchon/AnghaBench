
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcf50633 {int * regulator_pdev; int bl_pdev; int adc_pdev; int mbc_pdev; int rtc_pdev; int input_pdev; } ;
struct TYPE_2__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;


 int PCF50633_NUM_REGULATORS ;
 struct pcf50633* i2c_get_clientdata (struct i2c_client*) ;
 int pcf50633_irq_free (struct pcf50633*) ;
 int pcf_attr_group ;
 int platform_device_unregister (int ) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int pcf50633_remove(struct i2c_client *client)
{
 struct pcf50633 *pcf = i2c_get_clientdata(client);
 int i;

 sysfs_remove_group(&client->dev.kobj, &pcf_attr_group);
 pcf50633_irq_free(pcf);

 platform_device_unregister(pcf->input_pdev);
 platform_device_unregister(pcf->rtc_pdev);
 platform_device_unregister(pcf->mbc_pdev);
 platform_device_unregister(pcf->adc_pdev);
 platform_device_unregister(pcf->bl_pdev);

 for (i = 0; i < PCF50633_NUM_REGULATORS; i++)
  platform_device_unregister(pcf->regulator_pdev[i]);

 return 0;
}
