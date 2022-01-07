
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue_set {int rbdr_cnt; int sq_cnt; int cq_cnt; int cq_len; int * cq; int sq_len; int * sq; int rbdr_len; int * rbdr; } ;
struct nicvf {struct queue_set* qs; } ;


 int DMA_BUFFER_LEN ;
 int ENOMEM ;
 int nicvf_free_resources (struct nicvf*) ;
 scalar_t__ nicvf_init_cmp_queue (struct nicvf*,int *,int ) ;
 scalar_t__ nicvf_init_rbdr (struct nicvf*,int *,int ,int ) ;
 scalar_t__ nicvf_init_snd_queue (struct nicvf*,int *,int ,int) ;

__attribute__((used)) static int nicvf_alloc_resources(struct nicvf *nic)
{
 int qidx;
 struct queue_set *qs = nic->qs;


 for (qidx = 0; qidx < qs->rbdr_cnt; qidx++) {
  if (nicvf_init_rbdr(nic, &qs->rbdr[qidx], qs->rbdr_len,
        DMA_BUFFER_LEN))
   goto alloc_fail;
 }


 for (qidx = 0; qidx < qs->sq_cnt; qidx++) {
  if (nicvf_init_snd_queue(nic, &qs->sq[qidx], qs->sq_len, qidx))
   goto alloc_fail;
 }


 for (qidx = 0; qidx < qs->cq_cnt; qidx++) {
  if (nicvf_init_cmp_queue(nic, &qs->cq[qidx], qs->cq_len))
   goto alloc_fail;
 }

 return 0;
alloc_fail:
 nicvf_free_resources(nic);
 return -ENOMEM;
}
