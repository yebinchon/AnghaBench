
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ti_st_plat_data {int (* suspend ) (struct platform_device*,int ) ;} ;
struct TYPE_2__ {struct ti_st_plat_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
typedef int pm_message_t ;


 int stub1 (struct platform_device*,int ) ;

__attribute__((used)) static int kim_suspend(struct platform_device *pdev, pm_message_t state)
{
 struct ti_st_plat_data *pdata = pdev->dev.platform_data;

 if (pdata->suspend)
  return pdata->suspend(pdev, state);

 return 0;
}
