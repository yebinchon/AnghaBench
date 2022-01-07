
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_2__ {int concrete_fid; scalar_t__ opaque_fid; } ;
struct qed_hwfn {int abs_pf_id; TYPE_1__ hw_info; void* port_id; void* rel_pf_id; } ;


 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int,scalar_t__) ;
 void* GET_FIELD (int,int ) ;
 int NETIF_MSG_PROBE ;
 int PXP_CONCRETE_FID_PFID ;
 int PXP_CONCRETE_FID_PORT ;
 int PXP_PF_ME_CONCRETE_ADDR ;
 int PXP_PF_ME_OPAQUE_ADDR ;
 int REG_RD (struct qed_hwfn*,int ) ;

__attribute__((used)) static void get_function_id(struct qed_hwfn *p_hwfn)
{

 p_hwfn->hw_info.opaque_fid = (u16) REG_RD(p_hwfn,
        PXP_PF_ME_OPAQUE_ADDR);

 p_hwfn->hw_info.concrete_fid = REG_RD(p_hwfn, PXP_PF_ME_CONCRETE_ADDR);

 p_hwfn->abs_pf_id = (p_hwfn->hw_info.concrete_fid >> 16) & 0xf;
 p_hwfn->rel_pf_id = GET_FIELD(p_hwfn->hw_info.concrete_fid,
          PXP_CONCRETE_FID_PFID);
 p_hwfn->port_id = GET_FIELD(p_hwfn->hw_info.concrete_fid,
        PXP_CONCRETE_FID_PORT);

 DP_VERBOSE(p_hwfn, NETIF_MSG_PROBE,
     "Read ME register: Concrete 0x%08x Opaque 0x%04x\n",
     p_hwfn->hw_info.concrete_fid, p_hwfn->hw_info.opaque_fid);
}
