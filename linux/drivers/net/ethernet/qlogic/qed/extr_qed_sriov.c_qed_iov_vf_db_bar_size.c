
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;


 int PGLUE_B_REG_VF_BAR1_SIZE ;
 scalar_t__ qed_rd (struct qed_hwfn*,struct qed_ptt*,int ) ;

__attribute__((used)) static u32 qed_iov_vf_db_bar_size(struct qed_hwfn *p_hwfn,
      struct qed_ptt *p_ptt)
{
 u32 val = qed_rd(p_hwfn, p_ptt, PGLUE_B_REG_VF_BAR1_SIZE);

 if (val)
  return val + 11;
 return 0;
}
