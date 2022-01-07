
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct ir_raw_event {int timeout; int duration; } ;
struct TYPE_5__ {int timeout; } ;
struct TYPE_4__ {TYPE_2__* rcdev; } ;


 int ir_raw_event_handle (TYPE_2__*) ;
 int ir_raw_event_store_with_filter (TYPE_2__*,struct ir_raw_event*) ;
 TYPE_1__ serial_ir ;

__attribute__((used)) static void serial_ir_timeout(struct timer_list *unused)
{
 struct ir_raw_event ev = {
  .timeout = 1,
  .duration = serial_ir.rcdev->timeout
 };
 ir_raw_event_store_with_filter(serial_ir.rcdev, &ev);
 ir_raw_event_handle(serial_ir.rcdev);
}
