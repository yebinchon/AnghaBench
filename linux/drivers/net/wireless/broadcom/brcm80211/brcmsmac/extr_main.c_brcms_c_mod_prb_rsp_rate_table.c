
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint ;
typedef int u8 ;
typedef scalar_t__ u16 ;
struct brcms_c_rateset {size_t count; int* rates; } ;
struct brcms_c_info {int hw; TYPE_1__* stf; int band; } ;
struct TYPE_2__ {int txstreams; } ;


 int BRCMS_LONG_PREAMBLE ;
 int BRCMS_RATE_MASK ;
 int D11_PHY_HDR_LEN ;
 scalar_t__ M_RT_PRS_DUR_POS ;
 scalar_t__ M_RT_PRS_PLCP_POS ;
 scalar_t__ brcms_b_rate_shm_offset (int ,int) ;
 int brcms_b_write_shm (int ,scalar_t__,scalar_t__) ;
 scalar_t__ brcms_c_calc_frame_time (struct brcms_c_info*,int,int ,size_t) ;
 int brcms_c_compute_plcp (struct brcms_c_info*,int,size_t,int*) ;
 int brcms_c_rateset_copy (struct brcms_c_rateset const*,struct brcms_c_rateset*) ;
 struct brcms_c_rateset* brcms_c_rateset_get_hwrs (struct brcms_c_info*) ;
 int brcms_c_rateset_mcs_upd (struct brcms_c_rateset*,int ) ;
 scalar_t__ get_sifs (int ) ;

__attribute__((used)) static void
brcms_c_mod_prb_rsp_rate_table(struct brcms_c_info *wlc, uint frame_len)
{
 const struct brcms_c_rateset *rs_dflt;
 struct brcms_c_rateset rs;
 u8 rate;
 u16 entry_ptr;
 u8 plcp[D11_PHY_HDR_LEN];
 u16 dur, sifs;
 uint i;

 sifs = get_sifs(wlc->band);

 rs_dflt = brcms_c_rateset_get_hwrs(wlc);

 brcms_c_rateset_copy(rs_dflt, &rs);
 brcms_c_rateset_mcs_upd(&rs, wlc->stf->txstreams);





 for (i = 0; i < rs.count; i++) {
  rate = rs.rates[i] & BRCMS_RATE_MASK;

  entry_ptr = brcms_b_rate_shm_offset(wlc->hw, rate);


  brcms_c_compute_plcp(wlc, rate, frame_len, plcp);





  dur = (u16) brcms_c_calc_frame_time(wlc, rate,
      BRCMS_LONG_PREAMBLE, frame_len);
  dur += sifs;


  brcms_b_write_shm(wlc->hw, entry_ptr + M_RT_PRS_PLCP_POS,
         (u16) (plcp[0] + (plcp[1] << 8)));
  brcms_b_write_shm(wlc->hw, entry_ptr + M_RT_PRS_PLCP_POS + 2,
         (u16) (plcp[2] + (plcp[3] << 8)));
  brcms_b_write_shm(wlc->hw, entry_ptr + M_RT_PRS_DUR_POS, dur);
 }
}
