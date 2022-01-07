
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_hwfn {int cdev; } ;
struct eth_slow_path_rx_cqe {int echo; } ;
typedef enum protocol_type { ____Placeholder_protocol_type } protocol_type ;


 scalar_t__ IS_VF (int ) ;
 int qed_spq_completion (struct qed_hwfn*,int ,int ,int *) ;

__attribute__((used)) static int qed_cqe_completion(struct qed_hwfn *p_hwfn,
         struct eth_slow_path_rx_cqe *cqe,
         enum protocol_type protocol)
{
 if (IS_VF(p_hwfn->cdev))
  return 0;





 return qed_spq_completion(p_hwfn, cqe->echo, 0, ((void*)0));
}
