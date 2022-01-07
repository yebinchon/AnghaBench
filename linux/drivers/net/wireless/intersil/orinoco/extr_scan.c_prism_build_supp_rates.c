
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int WLAN_EID_EXT_SUPP_RATES ;
 int WLAN_EID_SUPP_RATES ;

__attribute__((used)) static int prism_build_supp_rates(u8 *buf, const u8 *rates)
{
 int i;

 buf[0] = WLAN_EID_SUPP_RATES;
 for (i = 0; i < 8; i++) {

  if (rates[i] == 0x0)
   break;
  buf[i + 2] = rates[i];
 }
 buf[1] = i;



 if (i == 8 && rates[i] > 0) {
  buf[10] = WLAN_EID_EXT_SUPP_RATES;
  for (; i < 10; i++) {

   if (rates[i] == 0x0)
    break;
   buf[i + 2] = rates[i];
  }
  buf[11] = i - 8;
 }

 return (i < 8) ? i + 2 : i + 4;
}
