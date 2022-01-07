
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ti_st_plat_data {int (* resume ) (struct platform_device*) ;} ;
struct TYPE_2__ {struct ti_st_plat_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;


 int stub1 (struct platform_device*) ;

__attribute__((used)) static int kim_resume(struct platform_device *pdev)
{
 struct ti_st_plat_data *pdata = pdev->dev.platform_data;

 if (pdata->resume)
  return pdata->resume(pdev);

 return 0;
}
