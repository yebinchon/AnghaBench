
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_hwfn {scalar_t__ db_bar_no_edpm; scalar_t__ dcbx_no_edpm; } ;



bool qed_edpm_enabled(struct qed_hwfn *p_hwfn)
{
 if (p_hwfn->dcbx_no_edpm || p_hwfn->db_bar_no_edpm)
  return 0;

 return 1;
}
