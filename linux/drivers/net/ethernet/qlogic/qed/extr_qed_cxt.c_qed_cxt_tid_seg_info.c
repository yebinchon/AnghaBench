
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct qed_tid_seg {scalar_t__ count; } ;
struct qed_hwfn {struct qed_cxt_mngr* p_cxt_mngr; } ;
struct qed_cxt_mngr {TYPE_1__* conn_cfg; } ;
struct TYPE_2__ {struct qed_tid_seg* tid_seg; } ;


 size_t MAX_CONN_TYPES ;

__attribute__((used)) static struct qed_tid_seg *qed_cxt_tid_seg_info(struct qed_hwfn *p_hwfn,
      u32 seg)
{
 struct qed_cxt_mngr *p_cfg = p_hwfn->p_cxt_mngr;
 u32 i;




 for (i = 0; i < MAX_CONN_TYPES; i++)
  if (p_cfg->conn_cfg[i].tid_seg[seg].count)
   return &p_cfg->conn_cfg[i].tid_seg[seg];
 return ((void*)0);
}
