
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u8 ;
typedef int u32 ;


 int BRCMS_SET_MIMO_PLCP_LEN (int*,int ) ;
 int MIMO_PLCP_40MHZ ;
 int RSPEC_RATE_MASK ;
 scalar_t__ rspec_is40mhz (int) ;
 int rspec_mimoplcp3 (int) ;

__attribute__((used)) static void brcms_c_compute_mimo_plcp(u32 rspec, uint length, u8 *plcp)
{
 u8 mcs = (u8) (rspec & RSPEC_RATE_MASK);
 plcp[0] = mcs;
 if (rspec_is40mhz(rspec) || (mcs == 32))
  plcp[0] |= MIMO_PLCP_40MHZ;
 BRCMS_SET_MIMO_PLCP_LEN(plcp, length);
 plcp[3] = rspec_mimoplcp3(rspec);
 plcp[3] |= 0x7;
 plcp[4] = 0;
 plcp[5] = 0;
}
