
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int index; } ;
struct device {int dummy; } ;
typedef scalar_t__ dev_t ;


 scalar_t__ MTD_DEVT (int ) ;
 struct mtd_info* dev_get_drvdata (struct device*) ;
 int device_destroy (int *,scalar_t__) ;
 int mtd_class ;

__attribute__((used)) static void mtd_release(struct device *dev)
{
 struct mtd_info *mtd = dev_get_drvdata(dev);
 dev_t index = MTD_DEVT(mtd->index);


 device_destroy(&mtd_class, index + 1);
}
