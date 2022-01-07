
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int __le16 ;


 int WLAN_EID_SUPP_RATES ;
 int le16_to_cpu (int const) ;

__attribute__((used)) static int symbol_build_supp_rates(u8 *buf, const __le16 *rates)
{
 int i;
 u8 rate;

 buf[0] = WLAN_EID_SUPP_RATES;
 for (i = 0; i < 5; i++) {
  rate = le16_to_cpu(rates[i]);

  if (rate == 0x0)
   break;
  buf[i + 2] = rate;
 }
 buf[1] = i;

 return i + 2;
}
