
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cx18 {TYPE_1__* in_work_order; int epu_debug_str; } ;
struct TYPE_2__ {int work; int str; struct cx18* cx; } ;


 int CX18_MAX_IN_WORK_ORDERS ;
 int INIT_WORK (int *,int ) ;
 int cx18_in_work_handler ;

__attribute__((used)) static void cx18_init_in_work_orders(struct cx18 *cx)
{
 int i;
 for (i = 0; i < CX18_MAX_IN_WORK_ORDERS; i++) {
  cx->in_work_order[i].cx = cx;
  cx->in_work_order[i].str = cx->epu_debug_str;
  INIT_WORK(&cx->in_work_order[i].work, cx18_in_work_handler);
 }
}
