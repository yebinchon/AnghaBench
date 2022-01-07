
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct qed_vf_info {int num_sbs; int opaque_fid; int * igu_sbs; scalar_t__ concrete_fid; } ;
struct qed_ptt {int dummy; } ;
struct TYPE_2__ {scalar_t__ concrete_fid; } ;
struct qed_hwfn {TYPE_1__ hw_info; } ;


 int IGU_REG_STATISTIC_NUM_VF_MSG_SENT ;
 int qed_fid_pretend (struct qed_hwfn*,struct qed_ptt*,int ) ;
 int qed_int_igu_init_pure_rt_single (struct qed_hwfn*,struct qed_ptt*,int ,int ,int) ;
 int qed_wr (struct qed_hwfn*,struct qed_ptt*,int ,int ) ;

__attribute__((used)) static void qed_iov_vf_igu_reset(struct qed_hwfn *p_hwfn,
     struct qed_ptt *p_ptt, struct qed_vf_info *vf)
{
 int i;


 qed_fid_pretend(p_hwfn, p_ptt, (u16) vf->concrete_fid);

 qed_wr(p_hwfn, p_ptt, IGU_REG_STATISTIC_NUM_VF_MSG_SENT, 0);


 qed_fid_pretend(p_hwfn, p_ptt, (u16) p_hwfn->hw_info.concrete_fid);


 for (i = 0; i < vf->num_sbs; i++)
  qed_int_igu_init_pure_rt_single(p_hwfn, p_ptt,
      vf->igu_sbs[i],
      vf->opaque_fid, 1);
}
