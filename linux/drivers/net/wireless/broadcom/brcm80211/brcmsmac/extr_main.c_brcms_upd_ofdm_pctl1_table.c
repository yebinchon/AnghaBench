
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint ;
typedef int u8 ;
typedef int u16 ;
struct brcms_hardware {int hw_stf_ss_opmode; int band; } ;


 size_t ARRAY_SIZE (int *) ;
 int BRCMS_PHY_11N_CAP (int ) ;
 int BRCM_RATE_12M ;
 int BRCM_RATE_18M ;
 int BRCM_RATE_24M ;
 int BRCM_RATE_36M ;
 int BRCM_RATE_48M ;
 int BRCM_RATE_54M ;
 int BRCM_RATE_6M ;
 int BRCM_RATE_9M ;
 int M_RT_OFDM_PCTL1_POS ;
 int PHY_TXC1_MODE_MASK ;
 int PHY_TXC1_MODE_SHIFT ;
 int brcms_b_ofdm_ratetable_offset (struct brcms_hardware*,int ) ;
 int brcms_b_read_shm (struct brcms_hardware*,int) ;
 int brcms_b_write_shm (struct brcms_hardware*,int,int) ;

__attribute__((used)) static void brcms_upd_ofdm_pctl1_table(struct brcms_hardware *wlc_hw)
{
 u8 rate;
 u8 rates[8] = {
  BRCM_RATE_6M, BRCM_RATE_9M, BRCM_RATE_12M, BRCM_RATE_18M,
  BRCM_RATE_24M, BRCM_RATE_36M, BRCM_RATE_48M, BRCM_RATE_54M
 };
 u16 entry_ptr;
 u16 pctl1;
 uint i;

 if (!BRCMS_PHY_11N_CAP(wlc_hw->band))
  return;


 for (i = 0; i < ARRAY_SIZE(rates); i++) {
  rate = rates[i];

  entry_ptr = brcms_b_ofdm_ratetable_offset(wlc_hw, rate);


  pctl1 =
      brcms_b_read_shm(wlc_hw, entry_ptr + M_RT_OFDM_PCTL1_POS);


  pctl1 &= ~PHY_TXC1_MODE_MASK;
  pctl1 |= (wlc_hw->hw_stf_ss_opmode << PHY_TXC1_MODE_SHIFT);


  brcms_b_write_shm(wlc_hw, entry_ptr + M_RT_OFDM_PCTL1_POS,
       pctl1);
 }
}
