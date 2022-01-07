
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct lis3lv02d {int mutex; int * mapped_btns; int (* read ) (struct lis3lv02d*,int ,int*) ;TYPE_1__* idev; } ;
struct input_dev {int dummy; } ;
struct TYPE_2__ {struct input_dev* input; } ;


 int CLICK_SINGLE_X ;
 int CLICK_SINGLE_Y ;
 int CLICK_SINGLE_Z ;
 int CLICK_SRC ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct lis3lv02d*,int ,int*) ;

__attribute__((used)) static void lis302dl_interrupt_handle_click(struct lis3lv02d *lis3)
{
 struct input_dev *dev = lis3->idev->input;
 u8 click_src;

 mutex_lock(&lis3->mutex);
 lis3->read(lis3, CLICK_SRC, &click_src);

 if (click_src & CLICK_SINGLE_X) {
  input_report_key(dev, lis3->mapped_btns[0], 1);
  input_report_key(dev, lis3->mapped_btns[0], 0);
 }

 if (click_src & CLICK_SINGLE_Y) {
  input_report_key(dev, lis3->mapped_btns[1], 1);
  input_report_key(dev, lis3->mapped_btns[1], 0);
 }

 if (click_src & CLICK_SINGLE_Z) {
  input_report_key(dev, lis3->mapped_btns[2], 1);
  input_report_key(dev, lis3->mapped_btns[2], 0);
 }
 input_sync(dev);
 mutex_unlock(&lis3->mutex);
}
