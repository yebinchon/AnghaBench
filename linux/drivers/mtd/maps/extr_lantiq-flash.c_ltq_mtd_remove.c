
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct ltq_mtd {scalar_t__ mtd; } ;


 int map_destroy (scalar_t__) ;
 int mtd_device_unregister (scalar_t__) ;
 struct ltq_mtd* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int
ltq_mtd_remove(struct platform_device *pdev)
{
 struct ltq_mtd *ltq_mtd = platform_get_drvdata(pdev);

 if (ltq_mtd && ltq_mtd->mtd) {
  mtd_device_unregister(ltq_mtd->mtd);
  map_destroy(ltq_mtd->mtd);
 }
 return 0;
}
