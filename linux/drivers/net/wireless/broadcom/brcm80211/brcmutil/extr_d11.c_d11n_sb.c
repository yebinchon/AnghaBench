
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef enum brcmu_chan_sb { ____Placeholder_brcmu_chan_sb } brcmu_chan_sb ;





 int BRCMU_CHSPEC_D11N_SB_L ;
 int BRCMU_CHSPEC_D11N_SB_N ;
 int BRCMU_CHSPEC_D11N_SB_U ;
 int WARN_ON (int) ;

__attribute__((used)) static u16 d11n_sb(enum brcmu_chan_sb sb)
{
 switch (sb) {
 case 129:
  return BRCMU_CHSPEC_D11N_SB_N;
 case 130:
  return BRCMU_CHSPEC_D11N_SB_L;
 case 128:
  return BRCMU_CHSPEC_D11N_SB_U;
 default:
  WARN_ON(1);
 }
 return 0;
}
