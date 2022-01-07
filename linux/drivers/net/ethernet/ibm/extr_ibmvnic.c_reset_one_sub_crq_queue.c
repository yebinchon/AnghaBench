
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibmvnic_sub_crq_queue {int hw_irq; int crq_num; int msg_token; scalar_t__ cur; int used; int msgs; scalar_t__ irq; } ;
struct ibmvnic_adapter {TYPE_1__* vdev; } ;
struct TYPE_2__ {int unit_address; } ;


 int PAGE_SIZE ;
 int atomic_set (int *,int ) ;
 int free_irq (scalar_t__,struct ibmvnic_sub_crq_queue*) ;
 int h_reg_sub_crq (int ,int ,int,int *,int *) ;
 int irq_dispose_mapping (scalar_t__) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static int reset_one_sub_crq_queue(struct ibmvnic_adapter *adapter,
       struct ibmvnic_sub_crq_queue *scrq)
{
 int rc;

 if (scrq->irq) {
  free_irq(scrq->irq, scrq);
  irq_dispose_mapping(scrq->irq);
  scrq->irq = 0;
 }

 memset(scrq->msgs, 0, 4 * PAGE_SIZE);
 atomic_set(&scrq->used, 0);
 scrq->cur = 0;

 rc = h_reg_sub_crq(adapter->vdev->unit_address, scrq->msg_token,
      4 * PAGE_SIZE, &scrq->crq_num, &scrq->hw_irq);
 return rc;
}
