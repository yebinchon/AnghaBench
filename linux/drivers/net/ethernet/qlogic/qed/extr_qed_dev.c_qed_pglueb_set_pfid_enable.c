
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;


 int DP_NOTICE (struct qed_hwfn*,char*) ;
 int EAGAIN ;
 int PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER ;
 int qed_rd (struct qed_hwfn*,struct qed_ptt*,int ) ;
 int qed_wr (struct qed_hwfn*,struct qed_ptt*,int ,int) ;
 int usleep_range (int,int) ;

int qed_pglueb_set_pfid_enable(struct qed_hwfn *p_hwfn,
          struct qed_ptt *p_ptt, bool b_enable)
{
 u32 delay_idx = 0, val, set_val = b_enable ? 1 : 0;


 qed_wr(p_hwfn, p_ptt, PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER, set_val);


 for (delay_idx = 0; delay_idx < 20000; delay_idx++) {
  val = qed_rd(p_hwfn, p_ptt,
        PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER);
  if (val == set_val)
   break;

  usleep_range(50, 60);
 }

 if (val != set_val) {
  DP_NOTICE(p_hwfn,
     "PFID_ENABLE_MASTER wasn't changed after a second\n");
  return -EAGAIN;
 }

 return 0;
}
