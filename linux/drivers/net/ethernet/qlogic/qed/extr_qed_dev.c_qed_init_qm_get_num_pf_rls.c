
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct qed_hwfn {int dummy; } ;


 scalar_t__ NUM_DEFAULT_RLS ;
 int QED_RL ;
 int QED_VPORT ;
 int RESC_NUM (struct qed_hwfn*,int ) ;
 scalar_t__ min_t (int ,int ,int ) ;
 scalar_t__ qed_init_qm_get_num_vfs (struct qed_hwfn*) ;
 int u32 ;

__attribute__((used)) static u16 qed_init_qm_get_num_pf_rls(struct qed_hwfn *p_hwfn)
{
 u16 num_pf_rls, num_vfs = qed_init_qm_get_num_vfs(p_hwfn);


 num_pf_rls = (u16) min_t(u32, RESC_NUM(p_hwfn, QED_RL),
     RESC_NUM(p_hwfn, QED_VPORT));


 if (num_pf_rls < num_vfs + NUM_DEFAULT_RLS)
  return 0;


 num_pf_rls -= num_vfs + NUM_DEFAULT_RLS;

 return num_pf_rls;
}
