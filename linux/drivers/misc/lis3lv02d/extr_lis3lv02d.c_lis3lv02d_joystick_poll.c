
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lis3lv02d {int mutex; } ;
struct input_polled_dev {int input; struct lis3lv02d* private; } ;


 int ABS_X ;
 int ABS_Y ;
 int ABS_Z ;
 int input_report_abs (int ,int ,int) ;
 int input_sync (int ) ;
 int lis3lv02d_get_xyz (struct lis3lv02d*,int*,int*,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void lis3lv02d_joystick_poll(struct input_polled_dev *pidev)
{
 struct lis3lv02d *lis3 = pidev->private;
 int x, y, z;

 mutex_lock(&lis3->mutex);
 lis3lv02d_get_xyz(lis3, &x, &y, &z);
 input_report_abs(pidev->input, ABS_X, x);
 input_report_abs(pidev->input, ABS_Y, y);
 input_report_abs(pidev->input, ABS_Z, z);
 input_sync(pidev->input);
 mutex_unlock(&lis3->mutex);
}
