
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct platform_device {int dummy; } ;


 int IORESOURCE_MEM ;
 struct resource* gpio_nand_get_io_sync_of (struct platform_device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;

__attribute__((used)) static inline struct resource *
gpio_nand_get_io_sync(struct platform_device *pdev)
{
 struct resource *r = gpio_nand_get_io_sync_of(pdev);

 if (r)
  return r;

 return platform_get_resource(pdev, IORESOURCE_MEM, 1);
}
