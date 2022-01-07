
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u32 ;


 int ARRAY_SIZE (int *) ;
 int ETHTOOL_FEC_AUTO ;
 int find_first_bit (int *,unsigned long) ;
 int * pplm_fec_2_ethtool ;

__attribute__((used)) static u32 pplm2ethtool_fec(u_long fec_mode, unsigned long size)
{
 int mode = 0;

 if (!fec_mode)
  return ETHTOOL_FEC_AUTO;

 mode = find_first_bit(&fec_mode, size);

 if (mode < ARRAY_SIZE(pplm_fec_2_ethtool))
  return pplm_fec_2_ethtool[mode];

 return 0;
}
