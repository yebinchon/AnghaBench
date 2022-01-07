
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct atmel_pmecc {int dev; } ;


 int put_device (int ) ;

__attribute__((used)) static void devm_atmel_pmecc_put(struct device *dev, void *res)
{
 struct atmel_pmecc **pmecc = res;

 put_device((*pmecc)->dev);
}
