
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ionic_rxq_comp {int comp_index; int pkt_type_color; } ;
struct ionic_queue {struct ionic_desc_info* tail; TYPE_1__* head; } ;
struct ionic_desc_info {scalar_t__ index; int * cb_arg; int * cb; struct ionic_desc_info* next; } ;
struct ionic_cq_info {struct ionic_rxq_comp* cq_desc; } ;
struct ionic_cq {int done_color; struct ionic_queue* bound_q; } ;
struct TYPE_2__ {scalar_t__ index; } ;


 int color_match (int ,int ) ;
 int ionic_rx_clean (struct ionic_queue*,struct ionic_desc_info*,struct ionic_cq_info*,int *) ;
 scalar_t__ le16_to_cpu (int ) ;

__attribute__((used)) static bool ionic_rx_service(struct ionic_cq *cq, struct ionic_cq_info *cq_info)
{
 struct ionic_rxq_comp *comp = cq_info->cq_desc;
 struct ionic_queue *q = cq->bound_q;
 struct ionic_desc_info *desc_info;

 if (!color_match(comp->pkt_type_color, cq->done_color))
  return 0;


 if (q->tail->index == q->head->index)
  return 0;

 desc_info = q->tail;
 if (desc_info->index != le16_to_cpu(comp->comp_index))
  return 0;

 q->tail = desc_info->next;


 ionic_rx_clean(q, desc_info, cq_info, desc_info->cb_arg);

 desc_info->cb = ((void*)0);
 desc_info->cb_arg = ((void*)0);

 return 1;
}
