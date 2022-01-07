
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_queue_cid {int dummy; } ;
struct qed_hwfn {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static inline int qed_vf_pf_rxq_stop(struct qed_hwfn *p_hwfn,
         struct qed_queue_cid *p_cid,
         bool cqe_completion)
{
 return -EINVAL;
}
