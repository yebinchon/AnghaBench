
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lis3lv02d {scalar_t__ whoami; int wake_thread; scalar_t__ idev; scalar_t__ pdata; scalar_t__ pm_dev; } ;
struct input_polled_dev {struct lis3lv02d* private; } ;


 scalar_t__ WAI_8B ;
 int atomic_set (int *,int) ;
 int lis3lv02d_joystick_poll (struct input_polled_dev*) ;
 int pm_runtime_get_sync (scalar_t__) ;

__attribute__((used)) static void lis3lv02d_joystick_open(struct input_polled_dev *pidev)
{
 struct lis3lv02d *lis3 = pidev->private;

 if (lis3->pm_dev)
  pm_runtime_get_sync(lis3->pm_dev);

 if (lis3->pdata && lis3->whoami == WAI_8B && lis3->idev)
  atomic_set(&lis3->wake_thread, 1);




 lis3lv02d_joystick_poll(pidev);
}
