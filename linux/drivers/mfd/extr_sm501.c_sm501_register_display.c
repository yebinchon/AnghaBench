
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sm501_devdata {int dummy; } ;
struct platform_device {int * resource; } ;
typedef int resource_size_t ;


 int ENOMEM ;
 int sm501_create_irq (struct sm501_devdata*,int *) ;
 int sm501_create_mem (struct sm501_devdata*,int *,int *,int ) ;
 struct platform_device* sm501_create_subdev (struct sm501_devdata*,char*,int,int ) ;
 int sm501_create_subio (struct sm501_devdata*,int *,int,int) ;
 int sm501_register_device (struct sm501_devdata*,struct platform_device*) ;

__attribute__((used)) static int sm501_register_display(struct sm501_devdata *sm,
      resource_size_t *mem_avail)
{
 struct platform_device *pdev;

 pdev = sm501_create_subdev(sm, "sm501-fb", 4, 0);
 if (!pdev)
  return -ENOMEM;

 sm501_create_subio(sm, &pdev->resource[0], 0x80000, 0x10000);
 sm501_create_subio(sm, &pdev->resource[1], 0x100000, 0x50000);
 sm501_create_mem(sm, &pdev->resource[2], mem_avail, *mem_avail);
 sm501_create_irq(sm, &pdev->resource[3]);

 return sm501_register_device(sm, pdev);
}
