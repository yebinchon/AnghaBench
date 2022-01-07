
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef enum brcmu_chan_bw { ____Placeholder_brcmu_chan_bw } brcmu_chan_bw ;






 int BRCMU_CHSPEC_D11AC_BW_160 ;
 int BRCMU_CHSPEC_D11AC_BW_20 ;
 int BRCMU_CHSPEC_D11AC_BW_40 ;
 int BRCMU_CHSPEC_D11AC_BW_80 ;
 int WARN_ON (int) ;

__attribute__((used)) static u16 d11ac_bw(enum brcmu_chan_bw bw)
{
 switch (bw) {
 case 130:
  return BRCMU_CHSPEC_D11AC_BW_20;
 case 129:
  return BRCMU_CHSPEC_D11AC_BW_40;
 case 128:
  return BRCMU_CHSPEC_D11AC_BW_80;
 case 131:
  return BRCMU_CHSPEC_D11AC_BW_160;
 default:
  WARN_ON(1);
 }
 return 0;
}
