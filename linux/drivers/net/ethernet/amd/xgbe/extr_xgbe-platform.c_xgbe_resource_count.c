
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct platform_device {int num_resources; struct resource* resource; } ;


 unsigned int resource_type (struct resource*) ;

__attribute__((used)) static unsigned int xgbe_resource_count(struct platform_device *pdev,
     unsigned int type)
{
 unsigned int count;
 int i;

 for (i = 0, count = 0; i < pdev->num_resources; i++) {
  struct resource *res = &pdev->resource[i];

  if (type == resource_type(res))
   count++;
 }

 return count;
}
