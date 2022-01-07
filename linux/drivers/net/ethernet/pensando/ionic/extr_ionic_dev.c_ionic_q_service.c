
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ionic_queue {struct ionic_desc_info* tail; TYPE_3__* head; int name; TYPE_2__* lif; } ;
struct ionic_desc_info {scalar_t__ index; int * cb_arg; int (* cb ) (struct ionic_queue*,struct ionic_desc_info*,struct ionic_cq_info*,void*) ;struct ionic_desc_info* next; } ;
struct ionic_cq_info {int dummy; } ;
typedef int (* ionic_desc_cb ) (struct ionic_queue*,struct ionic_desc_info*,struct ionic_cq_info*,void*) ;
struct TYPE_6__ {scalar_t__ index; } ;
struct TYPE_5__ {TYPE_1__* ionic; } ;
struct TYPE_4__ {int dev; } ;


 int dev_err (int ,char*,int ,unsigned int,scalar_t__,scalar_t__) ;
 int ionic_q_is_posted (struct ionic_queue*,unsigned int) ;
 scalar_t__ unlikely (int) ;

void ionic_q_service(struct ionic_queue *q, struct ionic_cq_info *cq_info,
       unsigned int stop_index)
{
 struct ionic_desc_info *desc_info;
 ionic_desc_cb cb;
 void *cb_arg;


 if (q->tail->index == q->head->index)
  return;


 if (unlikely(!ionic_q_is_posted(q, stop_index)))
  dev_err(q->lif->ionic->dev,
   "ionic stop is not posted %s stop %u tail %u head %u\n",
   q->name, stop_index, q->tail->index, q->head->index);

 do {
  desc_info = q->tail;
  q->tail = desc_info->next;

  cb = desc_info->cb;
  cb_arg = desc_info->cb_arg;

  desc_info->cb = ((void*)0);
  desc_info->cb_arg = ((void*)0);

  if (cb)
   cb(q, desc_info, cq_info, cb_arg);
 } while (desc_info->index != stop_index);
}
