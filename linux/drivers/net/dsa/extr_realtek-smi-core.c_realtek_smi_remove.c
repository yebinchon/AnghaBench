
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct realtek_smi {int reset; TYPE_2__* slave_mii_bus; int ds; } ;
struct platform_device {int dev; } ;
struct TYPE_3__ {int of_node; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 struct realtek_smi* dev_get_drvdata (int *) ;
 int dsa_unregister_switch (int ) ;
 int gpiod_set_value (int ,int) ;
 int of_node_put (int ) ;

__attribute__((used)) static int realtek_smi_remove(struct platform_device *pdev)
{
 struct realtek_smi *smi = dev_get_drvdata(&pdev->dev);

 dsa_unregister_switch(smi->ds);
 if (smi->slave_mii_bus)
  of_node_put(smi->slave_mii_bus->dev.of_node);
 gpiod_set_value(smi->reset, 1);

 return 0;
}
