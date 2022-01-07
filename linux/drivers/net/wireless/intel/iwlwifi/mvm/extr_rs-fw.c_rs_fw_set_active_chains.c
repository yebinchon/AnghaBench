
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ANT_A ;
 int ANT_B ;
 int ANT_C ;
 int IWL_TLC_MNG_CHAIN_A_MSK ;
 int IWL_TLC_MNG_CHAIN_B_MSK ;
 int WARN (int,char*,int) ;

__attribute__((used)) static u8 rs_fw_set_active_chains(u8 chains)
{
 u8 fw_chains = 0;

 if (chains & ANT_A)
  fw_chains |= IWL_TLC_MNG_CHAIN_A_MSK;
 if (chains & ANT_B)
  fw_chains |= IWL_TLC_MNG_CHAIN_B_MSK;
 if (chains & ANT_C)
  WARN(0,
       "tlc offload doesn't support antenna C. chains: 0x%x\n",
       chains);

 return fw_chains;
}
