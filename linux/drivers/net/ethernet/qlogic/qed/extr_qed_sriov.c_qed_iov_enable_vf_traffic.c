
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_vf_info {int dummy; } ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;


 int qed_iov_config_perm_table (struct qed_hwfn*,struct qed_ptt*,struct qed_vf_info*,int) ;
 int qed_iov_vf_igu_reset (struct qed_hwfn*,struct qed_ptt*,struct qed_vf_info*) ;
 int qed_iov_vf_igu_set_int (struct qed_hwfn*,struct qed_ptt*,struct qed_vf_info*,int) ;

__attribute__((used)) static void qed_iov_enable_vf_traffic(struct qed_hwfn *p_hwfn,
          struct qed_ptt *p_ptt,
          struct qed_vf_info *vf)
{

 qed_iov_vf_igu_reset(p_hwfn, p_ptt, vf);

 qed_iov_vf_igu_set_int(p_hwfn, p_ptt, vf, 1);


 qed_iov_config_perm_table(p_hwfn, p_ptt, vf, 1);
}
