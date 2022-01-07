
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct queue_set {int sq_cnt; int cq_cnt; int rbdr_cnt; int rq_cnt; int sq_len; int cq_len; } ;
struct nicvf {scalar_t__ sqs_mode; TYPE_1__* pnicvf; struct queue_set* qs; } ;
struct TYPE_2__ {struct queue_set* qs; } ;


 int ENOMEM ;
 scalar_t__ nicvf_alloc_resources (struct nicvf*) ;
 int nicvf_cmp_queue_config (struct nicvf*,struct queue_set*,int,int) ;
 int nicvf_free_resources (struct nicvf*) ;
 int nicvf_rbdr_config (struct nicvf*,struct queue_set*,int,int) ;
 int nicvf_rcv_queue_config (struct nicvf*,struct queue_set*,int,int) ;
 int nicvf_reset_rcv_queue_stats (struct nicvf*) ;
 int nicvf_snd_queue_config (struct nicvf*,struct queue_set*,int,int) ;

int nicvf_config_data_transfer(struct nicvf *nic, bool enable)
{
 bool disable = 0;
 struct queue_set *qs = nic->qs;
 struct queue_set *pqs = nic->pnicvf->qs;
 int qidx;

 if (!qs)
  return 0;





 if (nic->sqs_mode && pqs) {
  qs->cq_len = pqs->cq_len;
  qs->sq_len = pqs->sq_len;
 }

 if (enable) {
  if (nicvf_alloc_resources(nic))
   return -ENOMEM;

  for (qidx = 0; qidx < qs->sq_cnt; qidx++)
   nicvf_snd_queue_config(nic, qs, qidx, enable);
  for (qidx = 0; qidx < qs->cq_cnt; qidx++)
   nicvf_cmp_queue_config(nic, qs, qidx, enable);
  for (qidx = 0; qidx < qs->rbdr_cnt; qidx++)
   nicvf_rbdr_config(nic, qs, qidx, enable);
  for (qidx = 0; qidx < qs->rq_cnt; qidx++)
   nicvf_rcv_queue_config(nic, qs, qidx, enable);
 } else {
  for (qidx = 0; qidx < qs->rq_cnt; qidx++)
   nicvf_rcv_queue_config(nic, qs, qidx, disable);
  for (qidx = 0; qidx < qs->rbdr_cnt; qidx++)
   nicvf_rbdr_config(nic, qs, qidx, disable);
  for (qidx = 0; qidx < qs->sq_cnt; qidx++)
   nicvf_snd_queue_config(nic, qs, qidx, disable);
  for (qidx = 0; qidx < qs->cq_cnt; qidx++)
   nicvf_cmp_queue_config(nic, qs, qidx, disable);

  nicvf_free_resources(nic);
 }




 nicvf_reset_rcv_queue_stats(nic);

 return 0;
}
