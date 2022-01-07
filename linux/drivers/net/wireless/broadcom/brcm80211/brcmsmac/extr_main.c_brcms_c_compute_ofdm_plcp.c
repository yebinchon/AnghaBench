
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ofdm_phy_hdr {int dummy; } ;


 int BRCMS_RATE_MASK ;
 int D11A_PHY_HDR_SRATE (struct ofdm_phy_hdr*,int) ;
 int D11_PHY_HDR_LEN ;
 int memset (int*,int ,int ) ;
 int* rate_info ;
 int rspec2rate (int) ;

__attribute__((used)) static void
brcms_c_compute_ofdm_plcp(u32 rspec, u32 length, u8 *plcp)
{
 u8 rate_signal;
 u32 tmp = 0;
 int rate = rspec2rate(rspec);





 rate_signal = rate_info[rate] & BRCMS_RATE_MASK;
 memset(plcp, 0, D11_PHY_HDR_LEN);
 D11A_PHY_HDR_SRATE((struct ofdm_phy_hdr *) plcp, rate_signal);

 tmp = (length & 0xfff) << 5;
 plcp[2] |= (tmp >> 16) & 0xff;
 plcp[1] |= (tmp >> 8) & 0xff;
 plcp[0] |= tmp & 0xff;
}
