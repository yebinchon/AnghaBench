
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_iwarp_ep {scalar_t__ sig; } ;
struct qed_hwfn {int dummy; } ;


 int DP_ERR (struct qed_hwfn*,char*,struct qed_iwarp_ep*) ;
 scalar_t__ QED_EP_SIG ;

__attribute__((used)) static inline bool
qed_iwarp_check_ep_ok(struct qed_hwfn *p_hwfn, struct qed_iwarp_ep *ep)
{
 if (!ep || (ep->sig != QED_EP_SIG)) {
  DP_ERR(p_hwfn, "ERROR ON ASYNC ep=%p\n", ep);
  return 0;
 }

 return 1;
}
