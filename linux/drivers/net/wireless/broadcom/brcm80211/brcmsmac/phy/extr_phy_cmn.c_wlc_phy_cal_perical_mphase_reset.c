
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_phy {scalar_t__ mphase_txcal_cmdidx; int mphase_cal_phase_id; int cal_type_override; int phycal_timer; } ;


 int MPHASE_CAL_STATE_IDLE ;
 int PHY_PERICAL_AUTO ;
 int wlapi_del_timer (int ) ;

void wlc_phy_cal_perical_mphase_reset(struct brcms_phy *pi)
{
 wlapi_del_timer(pi->phycal_timer);

 pi->cal_type_override = PHY_PERICAL_AUTO;
 pi->mphase_cal_phase_id = MPHASE_CAL_STATE_IDLE;
 pi->mphase_txcal_cmdidx = 0;
}
