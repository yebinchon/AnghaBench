
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct qed_vf_info {int vport_id; } ;
struct qed_ptt {int dummy; } ;
struct qed_mcp_link_state {int speed; } ;
struct qed_hwfn {int cdev; } ;
struct TYPE_4__ {TYPE_1__* mcp_info; } ;
struct TYPE_3__ {struct qed_mcp_link_state link_output; } ;


 int EINVAL ;
 TYPE_2__* QED_LEADING_HWFN (int ) ;
 int qed_fw_vport (struct qed_hwfn*,int ,int *) ;
 int qed_init_vport_rl (struct qed_hwfn*,struct qed_ptt*,int ,int ,int ) ;
 struct qed_vf_info* qed_iov_get_vf_info (struct qed_hwfn*,int ,int) ;

__attribute__((used)) static int qed_iov_configure_tx_rate(struct qed_hwfn *p_hwfn,
         struct qed_ptt *p_ptt, int vfid, int val)
{
 struct qed_mcp_link_state *p_link;
 struct qed_vf_info *vf;
 u8 abs_vp_id = 0;
 int rc;

 vf = qed_iov_get_vf_info(p_hwfn, (u16)vfid, 1);
 if (!vf)
  return -EINVAL;

 rc = qed_fw_vport(p_hwfn, vf->vport_id, &abs_vp_id);
 if (rc)
  return rc;

 p_link = &QED_LEADING_HWFN(p_hwfn->cdev)->mcp_info->link_output;

 return qed_init_vport_rl(p_hwfn, p_ptt, abs_vp_id, (u32)val,
     p_link->speed);
}
