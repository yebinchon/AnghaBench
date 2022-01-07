
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slave {int notify_work; TYPE_1__* bond; } ;
struct TYPE_2__ {int wq; } ;


 int queue_delayed_work (int ,int *,int ) ;

void bond_queue_slave_event(struct slave *slave)
{
 queue_delayed_work(slave->bond->wq, &slave->notify_work, 0);
}
