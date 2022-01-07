
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmio_nand {int chip; } ;
struct platform_device {int dummy; } ;


 int nand_release (int *) ;
 struct tmio_nand* platform_get_drvdata (struct platform_device*) ;
 int tmio_hw_stop (struct platform_device*,struct tmio_nand*) ;

__attribute__((used)) static int tmio_remove(struct platform_device *dev)
{
 struct tmio_nand *tmio = platform_get_drvdata(dev);

 nand_release(&tmio->chip);
 tmio_hw_stop(dev, tmio);
 return 0;
}
