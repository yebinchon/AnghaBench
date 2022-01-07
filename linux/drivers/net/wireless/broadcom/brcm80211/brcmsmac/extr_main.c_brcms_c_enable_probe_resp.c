
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_c_info {int prb_resp_timeout; int hw; } ;


 int BRCMS_PRB_RESP_TIMEOUT ;
 int M_PRS_MAXTIME ;
 int brcms_b_write_shm (int ,int ,int) ;

void brcms_c_enable_probe_resp(struct brcms_c_info *wlc, bool enable)
{




 wlc->prb_resp_timeout = enable ? BRCMS_PRB_RESP_TIMEOUT : 1;
 brcms_b_write_shm(wlc->hw, M_PRS_MAXTIME, wlc->prb_resp_timeout);

}
