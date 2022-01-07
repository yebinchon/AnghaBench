
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;


 int CAM_LINE_SIZE ;
 scalar_t__ PRS_REG_GFT_CAM ;
 scalar_t__ PRS_REG_GFT_PROFILE_MASK_RAM ;
 scalar_t__ PRS_REG_SEARCH_GFT ;
 int RAM_LINE_SIZE ;
 scalar_t__ REG_SIZE ;
 int qed_wr (struct qed_hwfn*,struct qed_ptt*,scalar_t__,int ) ;

void qed_gft_disable(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt, u16 pf_id)
{

 qed_wr(p_hwfn, p_ptt, PRS_REG_SEARCH_GFT, 0);




 qed_wr(p_hwfn, p_ptt, PRS_REG_GFT_CAM + CAM_LINE_SIZE * pf_id, 0);


 qed_wr(p_hwfn,
        p_ptt, PRS_REG_GFT_PROFILE_MASK_RAM + RAM_LINE_SIZE * pf_id, 0);
 qed_wr(p_hwfn,
        p_ptt,
        PRS_REG_GFT_PROFILE_MASK_RAM + RAM_LINE_SIZE * pf_id + REG_SIZE,
        0);
}
