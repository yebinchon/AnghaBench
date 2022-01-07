
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cx18 {TYPE_1__* in_work_order; } ;
struct TYPE_2__ {int work; } ;


 int CX18_MAX_IN_WORK_ORDERS ;
 int cancel_work_sync (int *) ;

__attribute__((used)) static void cx18_cancel_in_work_orders(struct cx18 *cx)
{
 int i;
 for (i = 0; i < CX18_MAX_IN_WORK_ORDERS; i++)
  cancel_work_sync(&cx->in_work_order[i].work);
}
