
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cal_dev {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int pm_runtime_get_sync (int *) ;

__attribute__((used)) static inline int cal_runtime_get(struct cal_dev *dev)
{
 return pm_runtime_get_sync(&dev->pdev->dev);
}
