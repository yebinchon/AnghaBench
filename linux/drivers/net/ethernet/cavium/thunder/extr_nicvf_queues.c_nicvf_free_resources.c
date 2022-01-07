
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue_set {int rbdr_cnt; int cq_cnt; int sq_cnt; int * sq; int * cq; int * rbdr; } ;
struct nicvf {struct queue_set* qs; } ;


 int nicvf_free_cmp_queue (struct nicvf*,int *) ;
 int nicvf_free_rbdr (struct nicvf*,int *) ;
 int nicvf_free_snd_queue (struct nicvf*,int *) ;

__attribute__((used)) static void nicvf_free_resources(struct nicvf *nic)
{
 int qidx;
 struct queue_set *qs = nic->qs;


 for (qidx = 0; qidx < qs->rbdr_cnt; qidx++)
  nicvf_free_rbdr(nic, &qs->rbdr[qidx]);


 for (qidx = 0; qidx < qs->cq_cnt; qidx++)
  nicvf_free_cmp_queue(nic, &qs->cq[qidx]);


 for (qidx = 0; qidx < qs->sq_cnt; qidx++)
  nicvf_free_snd_queue(nic, &qs->sq[qidx]);
}
