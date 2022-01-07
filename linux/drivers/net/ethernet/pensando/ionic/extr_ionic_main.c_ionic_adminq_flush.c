
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union ionic_adminq_cmd {int dummy; } ionic_adminq_cmd ;
struct ionic_queue {TYPE_1__* tail; TYPE_1__* head; } ;
struct ionic_lif {int adminq_lock; TYPE_2__* adminqcq; } ;
struct TYPE_4__ {struct ionic_queue q; } ;
struct TYPE_3__ {struct TYPE_3__* next; int * cb_arg; int * cb; int desc; } ;


 int memset (int ,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void ionic_adminq_flush(struct ionic_lif *lif)
{
 struct ionic_queue *adminq = &lif->adminqcq->q;

 spin_lock(&lif->adminq_lock);

 while (adminq->tail != adminq->head) {
  memset(adminq->tail->desc, 0, sizeof(union ionic_adminq_cmd));
  adminq->tail->cb = ((void*)0);
  adminq->tail->cb_arg = ((void*)0);
  adminq->tail = adminq->tail->next;
 }
 spin_unlock(&lif->adminq_lock);
}
