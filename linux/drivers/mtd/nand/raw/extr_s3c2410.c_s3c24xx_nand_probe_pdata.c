
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s3c2410_nand_info {int cpu_type; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {int driver_data; } ;


 TYPE_1__* platform_get_device_id (struct platform_device*) ;
 struct s3c2410_nand_info* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int s3c24xx_nand_probe_pdata(struct platform_device *pdev)
{
 struct s3c2410_nand_info *info = platform_get_drvdata(pdev);

 info->cpu_type = platform_get_device_id(pdev)->driver_data;

 return 0;
}
