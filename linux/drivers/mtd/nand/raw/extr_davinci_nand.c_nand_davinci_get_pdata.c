
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct davinci_nand_pdata {int dummy; } ;


 struct davinci_nand_pdata* dev_get_platdata (int *) ;

__attribute__((used)) static struct davinci_nand_pdata
 *nand_davinci_get_pdata(struct platform_device *pdev)
{
 return dev_get_platdata(&pdev->dev);
}
