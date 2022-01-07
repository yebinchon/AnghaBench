
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int start; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {int linear_tbl1_addr; int linear_tbl0_addr; int base_addr; } ;


 int IORESOURCE_MEM ;
 int iounmap (int ) ;
 TYPE_1__ isif_cfg ;
 int isif_hw_dev ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int release_mem_region (int ,int ) ;
 int resource_size (struct resource*) ;
 int vpfe_unregister_ccdc_device (int *) ;

__attribute__((used)) static int isif_remove(struct platform_device *pdev)
{
 struct resource *res;
 int i = 0;

 iounmap(isif_cfg.base_addr);
 iounmap(isif_cfg.linear_tbl0_addr);
 iounmap(isif_cfg.linear_tbl1_addr);
 while (i < 3) {
  res = platform_get_resource(pdev, IORESOURCE_MEM, i);
  if (res)
   release_mem_region(res->start, resource_size(res));
  i++;
 }
 vpfe_unregister_ccdc_device(&isif_hw_dev);
 return 0;
}
