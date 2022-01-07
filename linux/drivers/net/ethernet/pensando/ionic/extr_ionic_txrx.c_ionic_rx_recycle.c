
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ionic_rxq_desc {int len; int addr; } ;
struct ionic_queue {TYPE_1__* head; } ;
struct ionic_desc_info {struct ionic_rxq_desc* desc; } ;
struct TYPE_2__ {struct ionic_rxq_desc* desc; } ;


 int ionic_rx_clean ;
 int ionic_rxq_post (struct ionic_queue*,int,int ,struct sk_buff*) ;

__attribute__((used)) static void ionic_rx_recycle(struct ionic_queue *q, struct ionic_desc_info *desc_info,
        struct sk_buff *skb)
{
 struct ionic_rxq_desc *old = desc_info->desc;
 struct ionic_rxq_desc *new = q->head->desc;

 new->addr = old->addr;
 new->len = old->len;

 ionic_rxq_post(q, 1, ionic_rx_clean, skb);
}
