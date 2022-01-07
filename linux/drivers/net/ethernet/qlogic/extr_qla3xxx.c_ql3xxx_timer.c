
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct ql3_adapter {int link_state_work; int workqueue; } ;


 int adapter_timer ;
 struct ql3_adapter* from_timer (int ,struct timer_list*,int ) ;
 struct ql3_adapter* qdev ;
 int queue_delayed_work (int ,int *,int ) ;

__attribute__((used)) static void ql3xxx_timer(struct timer_list *t)
{
 struct ql3_adapter *qdev = from_timer(qdev, t, adapter_timer);
 queue_delayed_work(qdev->workqueue, &qdev->link_state_work, 0);
}
