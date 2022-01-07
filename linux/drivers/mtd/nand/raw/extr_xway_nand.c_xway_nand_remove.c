
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xway_nand_data {int chip; } ;
struct platform_device {int dummy; } ;


 int nand_release (int *) ;
 struct xway_nand_data* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int xway_nand_remove(struct platform_device *pdev)
{
 struct xway_nand_data *data = platform_get_drvdata(pdev);

 nand_release(&data->chip);

 return 0;
}
