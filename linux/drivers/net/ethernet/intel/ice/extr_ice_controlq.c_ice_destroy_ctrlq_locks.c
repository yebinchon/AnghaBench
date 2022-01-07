
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_ctl_q_info {int rq_lock; int sq_lock; } ;


 int mutex_destroy (int *) ;

__attribute__((used)) static void
ice_destroy_ctrlq_locks(struct ice_ctl_q_info *cq)
{
 mutex_destroy(&cq->sq_lock);
 mutex_destroy(&cq->rq_lock);
}
