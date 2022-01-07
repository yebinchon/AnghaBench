
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;


 int NIG_REG_VXLAN_CTRL ;
 int PBF_REG_VXLAN_PORT ;
 int PRS_REG_VXLAN_PORT ;
 int qed_wr (struct qed_hwfn*,struct qed_ptt*,int ,int ) ;

void qed_set_vxlan_dest_port(struct qed_hwfn *p_hwfn,
        struct qed_ptt *p_ptt, u16 dest_port)
{

 qed_wr(p_hwfn, p_ptt, PRS_REG_VXLAN_PORT, dest_port);


 qed_wr(p_hwfn, p_ptt, NIG_REG_VXLAN_CTRL, dest_port);


 qed_wr(p_hwfn, p_ptt, PBF_REG_VXLAN_PORT, dest_port);
}
