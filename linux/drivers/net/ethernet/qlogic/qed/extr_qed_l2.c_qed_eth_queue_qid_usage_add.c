
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef size_t u16 ;
struct TYPE_2__ {size_t queue_id; } ;
struct qed_queue_cid {scalar_t__ qid_usage_idx; TYPE_1__ rel; } ;
struct qed_l2_info {size_t queues; int lock; int * pp_qid_usage; } ;
struct qed_hwfn {struct qed_l2_info* p_l2_info; } ;


 int DP_NOTICE (struct qed_hwfn*,char*,size_t,size_t) ;
 scalar_t__ MAX_QUEUES_PER_QZONE ;
 int __set_bit (scalar_t__,int ) ;
 scalar_t__ find_first_zero_bit (int ,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static bool qed_eth_queue_qid_usage_add(struct qed_hwfn *p_hwfn,
     struct qed_queue_cid *p_cid)
{
 struct qed_l2_info *p_l2_info = p_hwfn->p_l2_info;
 u16 queue_id = p_cid->rel.queue_id;
 bool b_rc = 1;
 u8 first;

 mutex_lock(&p_l2_info->lock);

 if (queue_id >= p_l2_info->queues) {
  DP_NOTICE(p_hwfn,
     "Requested to increase usage for qzone %04x out of %08x\n",
     queue_id, p_l2_info->queues);
  b_rc = 0;
  goto out;
 }

 first = (u8)find_first_zero_bit(p_l2_info->pp_qid_usage[queue_id],
     MAX_QUEUES_PER_QZONE);
 if (first >= MAX_QUEUES_PER_QZONE) {
  b_rc = 0;
  goto out;
 }

 __set_bit(first, p_l2_info->pp_qid_usage[queue_id]);
 p_cid->qid_usage_idx = first;

out:
 mutex_unlock(&p_l2_info->lock);
 return b_rc;
}
