
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qed_ptt {int dummy; } ;
struct qed_hwfn {TYPE_1__* p_ptt_pool; } ;
typedef enum reserved_ptts { ____Placeholder_reserved_ptts } reserved_ptts ;
struct TYPE_2__ {struct qed_ptt* ptts; } ;


 int DP_NOTICE (struct qed_hwfn*,char*,int) ;
 int RESERVED_PTT_MAX ;

struct qed_ptt *qed_get_reserved_ptt(struct qed_hwfn *p_hwfn,
         enum reserved_ptts ptt_idx)
{
 if (ptt_idx >= RESERVED_PTT_MAX) {
  DP_NOTICE(p_hwfn,
     "Requested PTT %d is out of range\n", ptt_idx);
  return ((void*)0);
 }

 return &p_hwfn->p_ptt_pool->ptts[ptt_idx];
}
