
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct nicvf {TYPE_1__* qs; } ;
struct TYPE_4__ {char* name; } ;
struct TYPE_3__ {int rq_cnt; int sq_cnt; } ;


 int ETH_GSTRING_LEN ;
 int MAX_RCV_QUEUES_PER_QS ;
 int nicvf_n_queue_stats ;
 TYPE_2__* nicvf_queue_stats ;
 int sprintf (int *,char*,int,char*) ;

__attribute__((used)) static void nicvf_get_qset_strings(struct nicvf *nic, u8 **data, int qset)
{
 int stats, qidx;
 int start_qidx = qset * MAX_RCV_QUEUES_PER_QS;

 for (qidx = 0; qidx < nic->qs->rq_cnt; qidx++) {
  for (stats = 0; stats < nicvf_n_queue_stats; stats++) {
   sprintf(*data, "rxq%d: %s", qidx + start_qidx,
    nicvf_queue_stats[stats].name);
   *data += ETH_GSTRING_LEN;
  }
 }

 for (qidx = 0; qidx < nic->qs->sq_cnt; qidx++) {
  for (stats = 0; stats < nicvf_n_queue_stats; stats++) {
   sprintf(*data, "txq%d: %s", qidx + start_qidx,
    nicvf_queue_stats[stats].name);
   *data += ETH_GSTRING_LEN;
  }
 }
}
