
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;


 unsigned int BIT (int ) ;
 unsigned int ETHTOOL_FEC_AUTO ;
 unsigned int ETHTOOL_FEC_BASER ;
 unsigned int ETHTOOL_FEC_OFF ;
 unsigned int ETHTOOL_FEC_RS ;
 int HNAE3_FEC_AUTO ;
 int HNAE3_FEC_BASER ;
 int HNAE3_FEC_RS ;

__attribute__((used)) static unsigned int eth_to_loc_fec(unsigned int eth_fec)
{
 u32 loc_fec = 0;

 if (eth_fec & ETHTOOL_FEC_OFF)
  return loc_fec;

 if (eth_fec & ETHTOOL_FEC_AUTO)
  loc_fec |= BIT(HNAE3_FEC_AUTO);
 if (eth_fec & ETHTOOL_FEC_RS)
  loc_fec |= BIT(HNAE3_FEC_RS);
 if (eth_fec & ETHTOOL_FEC_BASER)
  loc_fec |= BIT(HNAE3_FEC_BASER);

 return loc_fec;
}
