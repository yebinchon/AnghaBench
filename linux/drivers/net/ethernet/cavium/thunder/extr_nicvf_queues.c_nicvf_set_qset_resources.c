
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct queue_set {void* sq_cnt; void* rq_cnt; int cq_len; int sq_len; int rbdr_len; int cq_cnt; int rbdr_cnt; } ;
struct nicvf {scalar_t__ xdp_tx_queues; void* tx_queues; void* rx_queues; struct queue_set* qs; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int CMP_QUEUE_LEN ;
 int DEFAULT_RBDR_CNT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_RCV_QUEUES_PER_QS ;
 int MAX_SND_QUEUES_PER_QS ;
 int RCV_BUF_COUNT ;
 int SND_QUEUE_LEN ;
 struct queue_set* devm_kzalloc (int *,int,int ) ;
 int max_t (int ,void*,void*) ;
 void* min_t (int ,int ,int ) ;
 int num_online_cpus () ;
 int u8 ;

int nicvf_set_qset_resources(struct nicvf *nic)
{
 struct queue_set *qs;

 qs = devm_kzalloc(&nic->pdev->dev, sizeof(*qs), GFP_KERNEL);
 if (!qs)
  return -ENOMEM;
 nic->qs = qs;


 qs->rbdr_cnt = DEFAULT_RBDR_CNT;
 qs->rq_cnt = min_t(u8, MAX_RCV_QUEUES_PER_QS, num_online_cpus());
 qs->sq_cnt = min_t(u8, MAX_SND_QUEUES_PER_QS, num_online_cpus());
 qs->cq_cnt = max_t(u8, qs->rq_cnt, qs->sq_cnt);


 qs->rbdr_len = RCV_BUF_COUNT;
 qs->sq_len = SND_QUEUE_LEN;
 qs->cq_len = CMP_QUEUE_LEN;

 nic->rx_queues = qs->rq_cnt;
 nic->tx_queues = qs->sq_cnt;
 nic->xdp_tx_queues = 0;

 return 0;
}
