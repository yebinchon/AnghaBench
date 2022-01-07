
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_can_classdev {int dev; scalar_t__ pm_clock_support; } ;


 int pm_runtime_put_sync (int ) ;

__attribute__((used)) static void m_can_clk_stop(struct m_can_classdev *cdev)
{
 if (cdev->pm_clock_support)
  pm_runtime_put_sync(cdev->dev);
}
