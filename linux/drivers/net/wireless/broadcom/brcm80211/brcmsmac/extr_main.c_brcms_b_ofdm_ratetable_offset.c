
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint ;
typedef scalar_t__ u8 ;
typedef int u16 ;
struct brcms_hardware {int dummy; } ;


 size_t ARRAY_SIZE (struct plcp_signal_rate_lookup const*) ;
 int BRCM_RATE_12M ;
 int BRCM_RATE_18M ;
 int BRCM_RATE_24M ;
 int BRCM_RATE_36M ;
 int BRCM_RATE_48M ;
 int BRCM_RATE_54M ;
 int BRCM_RATE_6M ;
 int BRCM_RATE_9M ;
 scalar_t__ M_RT_DIRMAP_A ;
 int brcms_b_read_shm (struct brcms_hardware*,scalar_t__) ;

__attribute__((used)) static u16 brcms_b_ofdm_ratetable_offset(struct brcms_hardware *wlc_hw,
      u8 rate)
{
 uint i;
 u8 plcp_rate = 0;
 struct plcp_signal_rate_lookup {
  u8 rate;
  u8 signal_rate;
 };

 const struct plcp_signal_rate_lookup rate_lookup[] = {
  {BRCM_RATE_6M, 0xB},
  {BRCM_RATE_9M, 0xF},
  {BRCM_RATE_12M, 0xA},
  {BRCM_RATE_18M, 0xE},
  {BRCM_RATE_24M, 0x9},
  {BRCM_RATE_36M, 0xD},
  {BRCM_RATE_48M, 0x8},
  {BRCM_RATE_54M, 0xC}
 };

 for (i = 0; i < ARRAY_SIZE(rate_lookup); i++) {
  if (rate == rate_lookup[i].rate) {
   plcp_rate = rate_lookup[i].signal_rate;
   break;
  }
 }




 return 2 * brcms_b_read_shm(wlc_hw, M_RT_DIRMAP_A + (plcp_rate * 2));
}
