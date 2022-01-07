
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int start; } ;
struct platform_device {struct resource* resource; } ;
struct TYPE_2__ {int base; } ;
struct onenand_info {TYPE_1__ onenand; int mtd; } ;


 int iounmap (int ) ;
 int kfree (struct onenand_info*) ;
 int onenand_release (int *) ;
 struct onenand_info* platform_get_drvdata (struct platform_device*) ;
 int release_mem_region (int ,unsigned long) ;
 unsigned long resource_size (struct resource*) ;

__attribute__((used)) static int generic_onenand_remove(struct platform_device *pdev)
{
 struct onenand_info *info = platform_get_drvdata(pdev);
 struct resource *res = pdev->resource;
 unsigned long size = resource_size(res);

 if (info) {
  onenand_release(&info->mtd);
  release_mem_region(res->start, size);
  iounmap(info->onenand.base);
  kfree(info);
 }

 return 0;
}
