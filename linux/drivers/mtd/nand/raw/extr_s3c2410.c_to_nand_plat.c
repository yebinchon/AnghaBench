
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c2410_platform_nand {int dummy; } ;
struct platform_device {int dev; } ;


 struct s3c2410_platform_nand* dev_get_platdata (int *) ;

__attribute__((used)) static struct s3c2410_platform_nand *to_nand_plat(struct platform_device *dev)
{
 return dev_get_platdata(&dev->dev);
}
