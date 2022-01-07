
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lis3lv02d {scalar_t__ pm_dev; int wake_thread; } ;
struct input_polled_dev {struct lis3lv02d* private; } ;


 int atomic_set (int *,int ) ;
 int pm_runtime_put (scalar_t__) ;

__attribute__((used)) static void lis3lv02d_joystick_close(struct input_polled_dev *pidev)
{
 struct lis3lv02d *lis3 = pidev->private;

 atomic_set(&lis3->wake_thread, 0);
 if (lis3->pm_dev)
  pm_runtime_put(lis3->pm_dev);
}
