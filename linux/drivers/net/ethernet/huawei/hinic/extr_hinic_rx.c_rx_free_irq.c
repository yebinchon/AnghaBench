
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinic_rxq {struct hinic_rq* rq; } ;
struct hinic_rq {int irq; } ;


 int free_irq (int ,struct hinic_rxq*) ;
 int irq_set_affinity_hint (int ,int *) ;
 int rx_del_napi (struct hinic_rxq*) ;

__attribute__((used)) static void rx_free_irq(struct hinic_rxq *rxq)
{
 struct hinic_rq *rq = rxq->rq;

 irq_set_affinity_hint(rq->irq, ((void*)0));
 free_irq(rq->irq, rxq);
 rx_del_napi(rxq);
}
