
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef enum brcmu_chan_bw { ____Placeholder_brcmu_chan_bw } brcmu_chan_bw ;




 int BRCMU_CHSPEC_D11N_BW_20 ;
 int BRCMU_CHSPEC_D11N_BW_40 ;
 int WARN_ON (int) ;

__attribute__((used)) static u16 d11n_bw(enum brcmu_chan_bw bw)
{
 switch (bw) {
 case 129:
  return BRCMU_CHSPEC_D11N_BW_20;
 case 128:
  return BRCMU_CHSPEC_D11N_BW_40;
 default:
  WARN_ON(1);
 }
 return 0;
}
