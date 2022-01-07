
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {TYPE_1__* mfd_cell; } ;
struct mfd_cell {int dummy; } ;
typedef int atomic_t ;
struct TYPE_2__ {int * usage_count; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_1__* kmemdup (struct mfd_cell const*,int,int ) ;

__attribute__((used)) static int mfd_platform_add_cell(struct platform_device *pdev,
     const struct mfd_cell *cell,
     atomic_t *usage_count)
{
 if (!cell)
  return 0;

 pdev->mfd_cell = kmemdup(cell, sizeof(*cell), GFP_KERNEL);
 if (!pdev->mfd_cell)
  return -ENOMEM;

 pdev->mfd_cell->usage_count = usage_count;
 return 0;
}
