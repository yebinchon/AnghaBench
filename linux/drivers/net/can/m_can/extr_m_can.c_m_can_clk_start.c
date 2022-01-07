
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_can_classdev {scalar_t__ pm_clock_support; int dev; } ;


 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_noidle (int ) ;

__attribute__((used)) static int m_can_clk_start(struct m_can_classdev *cdev)
{
 int err;

 if (cdev->pm_clock_support == 0)
  return 0;

 err = pm_runtime_get_sync(cdev->dev);
 if (err < 0) {
  pm_runtime_put_noidle(cdev->dev);
  return err;
 }

 return 0;
}
