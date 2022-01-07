
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u32 ;
typedef int u16 ;
struct brcms_c_info {int dummy; } ;


 int APHY_SERVICE_NBITS ;
 int APHY_TAIL_NBITS ;
 int CEIL (int,int) ;
 int RSPEC_RATE_MASK ;
 scalar_t__ is_mcs_rate (int) ;
 int mcs_2_rate (int,int ,int ) ;
 int mcs_2_txstreams (int) ;
 int rspec_is40mhz (int) ;
 int rspec_issgi (int) ;
 int rspec_stc (int) ;

u16
brcms_c_calc_lsig_len(struct brcms_c_info *wlc, u32 ratespec,
        uint mac_len)
{
 uint nsyms, len = 0, kNdps;

 if (is_mcs_rate(ratespec)) {
  uint mcs = ratespec & RSPEC_RATE_MASK;
  int tot_streams = (mcs_2_txstreams(mcs) + 1) +
      rspec_stc(ratespec);






  kNdps = mcs_2_rate(mcs, rspec_is40mhz(ratespec),
       rspec_issgi(ratespec)) * 4;

  if (rspec_stc(ratespec) == 0)
   nsyms =
       CEIL((APHY_SERVICE_NBITS + 8 * mac_len +
      APHY_TAIL_NBITS) * 1000, kNdps);
  else

   nsyms =
       2 *
       CEIL((APHY_SERVICE_NBITS + 8 * mac_len +
      APHY_TAIL_NBITS) * 1000, 2 * kNdps);


  nsyms += (tot_streams + 3);




  len = (3 * nsyms) - 3;
 }

 return (u16) len;
}
