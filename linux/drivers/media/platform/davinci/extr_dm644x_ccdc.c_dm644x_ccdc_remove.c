
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int start; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {int base_addr; } ;


 int IORESOURCE_MEM ;
 TYPE_1__ ccdc_cfg ;
 int ccdc_hw_dev ;
 int iounmap (int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int release_mem_region (int ,int ) ;
 int resource_size (struct resource*) ;
 int vpfe_unregister_ccdc_device (int *) ;

__attribute__((used)) static int dm644x_ccdc_remove(struct platform_device *pdev)
{
 struct resource *res;

 iounmap(ccdc_cfg.base_addr);
 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (res)
  release_mem_region(res->start, resource_size(res));
 vpfe_unregister_ccdc_device(&ccdc_hw_dev);
 return 0;
}
