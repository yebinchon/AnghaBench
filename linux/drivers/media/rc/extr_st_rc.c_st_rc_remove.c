
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_rc_device {int rdev; int sys_clock; } ;
struct platform_device {int dev; } ;


 int clk_disable_unprepare (int ) ;
 int dev_pm_clear_wake_irq (int *) ;
 int device_init_wakeup (int *,int) ;
 struct st_rc_device* platform_get_drvdata (struct platform_device*) ;
 int rc_unregister_device (int ) ;

__attribute__((used)) static int st_rc_remove(struct platform_device *pdev)
{
 struct st_rc_device *rc_dev = platform_get_drvdata(pdev);

 dev_pm_clear_wake_irq(&pdev->dev);
 device_init_wakeup(&pdev->dev, 0);
 clk_disable_unprepare(rc_dev->sys_clock);
 rc_unregister_device(rc_dev->rdev);
 return 0;
}
