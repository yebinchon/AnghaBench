
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t queue_id; } ;
struct qed_queue_cid {TYPE_1__ rel; int qid_usage_idx; } ;
struct qed_hwfn {TYPE_2__* p_l2_info; } ;
struct TYPE_4__ {int lock; int * pp_qid_usage; } ;


 int clear_bit (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void qed_eth_queue_qid_usage_del(struct qed_hwfn *p_hwfn,
     struct qed_queue_cid *p_cid)
{
 mutex_lock(&p_hwfn->p_l2_info->lock);

 clear_bit(p_cid->qid_usage_idx,
    p_hwfn->p_l2_info->pp_qid_usage[p_cid->rel.queue_id]);

 mutex_unlock(&p_hwfn->p_l2_info->lock);
}
