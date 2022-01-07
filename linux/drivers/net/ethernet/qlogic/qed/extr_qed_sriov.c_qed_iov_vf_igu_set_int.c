
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct qed_vf_info {scalar_t__ concrete_fid; } ;
struct qed_ptt {int dummy; } ;
struct TYPE_2__ {scalar_t__ concrete_fid; } ;
struct qed_hwfn {TYPE_1__ hw_info; } ;


 int IGU_REG_VF_CONFIGURATION ;
 int IGU_VF_CONF_MSI_MSIX_EN ;
 int qed_fid_pretend (struct qed_hwfn*,struct qed_ptt*,int ) ;
 int qed_rd (struct qed_hwfn*,struct qed_ptt*,int ) ;
 int qed_wr (struct qed_hwfn*,struct qed_ptt*,int ,int ) ;

__attribute__((used)) static void qed_iov_vf_igu_set_int(struct qed_hwfn *p_hwfn,
       struct qed_ptt *p_ptt,
       struct qed_vf_info *vf, bool enable)
{
 u32 igu_vf_conf;

 qed_fid_pretend(p_hwfn, p_ptt, (u16) vf->concrete_fid);

 igu_vf_conf = qed_rd(p_hwfn, p_ptt, IGU_REG_VF_CONFIGURATION);

 if (enable)
  igu_vf_conf |= IGU_VF_CONF_MSI_MSIX_EN;
 else
  igu_vf_conf &= ~IGU_VF_CONF_MSI_MSIX_EN;

 qed_wr(p_hwfn, p_ptt, IGU_REG_VF_CONFIGURATION, igu_vf_conf);


 qed_fid_pretend(p_hwfn, p_ptt, (u16) p_hwfn->hw_info.concrete_fid);
}
