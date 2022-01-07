
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cal_dev {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int pm_runtime_put_sync (int *) ;

__attribute__((used)) static inline void cal_runtime_put(struct cal_dev *dev)
{
 pm_runtime_put_sync(&dev->pdev->dev);
}
