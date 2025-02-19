
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
typedef int u8 ;
typedef int u32 ;
struct brcms_c_info {TYPE_1__* band; } ;
struct TYPE_2__ {scalar_t__ bandtype; } ;


 scalar_t__ APHY_PREAMBLE_TIME ;
 int APHY_SERVICE_NBITS ;
 scalar_t__ APHY_SIGNAL_TIME ;
 int APHY_SYMBOL_TIME ;
 int APHY_TAIL_NBITS ;
 scalar_t__ BPHY_PLCP_SHORT_TIME ;
 scalar_t__ BPHY_PLCP_TIME ;
 int BRCMS_SHORT_PREAMBLE ;
 scalar_t__ BRCM_BAND_2G ;
 scalar_t__ DOT11_OFDM_SIGNAL_EXTENSION ;
 scalar_t__ PREN_PREAMBLE ;
 int PREN_PREAMBLE_EXT ;
 int RSPEC_RATE_MASK ;
 scalar_t__ is_mcs_rate (int) ;
 scalar_t__ is_ofdm_rate (int) ;
 int mcs_2_rate (int,int ,int ) ;
 int mcs_2_txstreams (int) ;
 int rspec2rate (int) ;
 int rspec_is40mhz (int) ;
 int rspec_issgi (int) ;
 int rspec_stc (int) ;

__attribute__((used)) static uint
brcms_c_calc_frame_len(struct brcms_c_info *wlc, u32 ratespec,
     u8 preamble_type, uint dur)
{
 uint nsyms, mac_len, Ndps, kNdps;
 uint rate = rspec2rate(ratespec);

 if (is_mcs_rate(ratespec)) {
  uint mcs = ratespec & RSPEC_RATE_MASK;
  int tot_streams = mcs_2_txstreams(mcs) + rspec_stc(ratespec);
  dur -= PREN_PREAMBLE + (tot_streams * PREN_PREAMBLE_EXT);

  if (wlc->band->bandtype == BRCM_BAND_2G)
   dur -= DOT11_OFDM_SIGNAL_EXTENSION;

  kNdps = mcs_2_rate(mcs, rspec_is40mhz(ratespec),
       rspec_issgi(ratespec)) * 4;
  nsyms = dur / APHY_SYMBOL_TIME;
  mac_len =
      ((nsyms * kNdps) -
       ((APHY_SERVICE_NBITS + APHY_TAIL_NBITS) * 1000)) / 8000;
 } else if (is_ofdm_rate(ratespec)) {
  dur -= APHY_PREAMBLE_TIME;
  dur -= APHY_SIGNAL_TIME;

  Ndps = rate * 2;
  nsyms = dur / APHY_SYMBOL_TIME;
  mac_len =
      ((nsyms * Ndps) -
       (APHY_SERVICE_NBITS + APHY_TAIL_NBITS)) / 8;
 } else {
  if (preamble_type & BRCMS_SHORT_PREAMBLE)
   dur -= BPHY_PLCP_SHORT_TIME;
  else
   dur -= BPHY_PLCP_TIME;
  mac_len = dur * rate;

  mac_len = mac_len / 8 / 2;
 }
 return mac_len;
}
