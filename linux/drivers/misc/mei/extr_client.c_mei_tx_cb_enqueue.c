
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mei_cl_cb {TYPE_1__* cl; int list; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {int tx_cb_queued; } ;


 int list_add_tail (int *,struct list_head*) ;

__attribute__((used)) static inline void mei_tx_cb_enqueue(struct mei_cl_cb *cb,
         struct list_head *head)
{
 list_add_tail(&cb->list, head);
 cb->cl->tx_cb_queued++;
}
