
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct qed_vf_info {int abs_vf_id; scalar_t__ concrete_fid; } ;
struct qed_ptt {int dummy; } ;
struct TYPE_2__ {scalar_t__ concrete_fid; } ;
struct qed_hwfn {TYPE_1__ hw_info; } ;


 int DORQ_REG_VF_USAGE_CNT ;
 int DP_ERR (struct qed_hwfn*,char*,int ,int ) ;
 int EBUSY ;
 int msleep (int) ;
 int qed_fid_pretend (struct qed_hwfn*,struct qed_ptt*,int ) ;
 int qed_rd (struct qed_hwfn*,struct qed_ptt*,int ) ;

__attribute__((used)) static int
qed_iov_vf_flr_poll_dorq(struct qed_hwfn *p_hwfn,
    struct qed_vf_info *p_vf, struct qed_ptt *p_ptt)
{
 int cnt;
 u32 val;

 qed_fid_pretend(p_hwfn, p_ptt, (u16) p_vf->concrete_fid);

 for (cnt = 0; cnt < 50; cnt++) {
  val = qed_rd(p_hwfn, p_ptt, DORQ_REG_VF_USAGE_CNT);
  if (!val)
   break;
  msleep(20);
 }
 qed_fid_pretend(p_hwfn, p_ptt, (u16) p_hwfn->hw_info.concrete_fid);

 if (cnt == 50) {
  DP_ERR(p_hwfn,
         "VF[%d] - dorq failed to cleanup [usage 0x%08x]\n",
         p_vf->abs_vf_id, val);
  return -EBUSY;
 }

 return 0;
}
