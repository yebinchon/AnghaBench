
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_sp_vport_update_params {int accept_flags; } ;
struct qed_hwfn {int dummy; } ;
struct qed_filter_accept_flags {int dummy; } ;
typedef int s_params ;


 int memcpy (int *,struct qed_filter_accept_flags*,int) ;
 int memset (struct qed_sp_vport_update_params*,int ,int) ;
 int qed_vf_pf_vport_update (struct qed_hwfn*,struct qed_sp_vport_update_params*) ;

__attribute__((used)) static int
qed_vf_pf_accept_flags(struct qed_hwfn *p_hwfn,
         struct qed_filter_accept_flags *p_accept_flags)
{
 struct qed_sp_vport_update_params s_params;

 memset(&s_params, 0, sizeof(s_params));
 memcpy(&s_params.accept_flags, p_accept_flags,
        sizeof(struct qed_filter_accept_flags));

 return qed_vf_pf_vport_update(p_hwfn, &s_params);
}
