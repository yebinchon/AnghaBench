
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucb1x00_ts {struct input_dev* idev; } ;
struct input_dev {int dummy; } ;


 int ABS_PRESSURE ;
 int BTN_TOUCH ;
 int input_report_abs (struct input_dev*,int ,int ) ;
 int input_report_key (struct input_dev*,int ,int ) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static inline void ucb1x00_ts_event_release(struct ucb1x00_ts *ts)
{
 struct input_dev *idev = ts->idev;

 input_report_abs(idev, ABS_PRESSURE, 0);
 input_report_key(idev, BTN_TOUCH, 0);
 input_sync(idev);
}
