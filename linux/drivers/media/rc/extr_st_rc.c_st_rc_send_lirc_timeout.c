
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dev {int timeout; } ;
struct ir_raw_event {int timeout; int duration; } ;


 int ir_raw_event_store (struct rc_dev*,struct ir_raw_event*) ;

__attribute__((used)) static void st_rc_send_lirc_timeout(struct rc_dev *rdev)
{
 struct ir_raw_event ev = { .timeout = 1, .duration = rdev->timeout };
 ir_raw_event_store(rdev, &ev);
}
