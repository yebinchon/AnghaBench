
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef unsigned int u32 ;


 int BIT (int ) ;
 unsigned int ETHTOOL_FEC_AUTO ;
 unsigned int ETHTOOL_FEC_BASER ;
 unsigned int ETHTOOL_FEC_OFF ;
 unsigned int ETHTOOL_FEC_RS ;
 int HNAE3_FEC_AUTO ;
 int HNAE3_FEC_BASER ;
 int HNAE3_FEC_RS ;

__attribute__((used)) static unsigned int loc_to_eth_fec(u8 loc_fec)
{
 u32 eth_fec = 0;

 if (loc_fec & BIT(HNAE3_FEC_AUTO))
  eth_fec |= ETHTOOL_FEC_AUTO;
 if (loc_fec & BIT(HNAE3_FEC_RS))
  eth_fec |= ETHTOOL_FEC_RS;
 if (loc_fec & BIT(HNAE3_FEC_BASER))
  eth_fec |= ETHTOOL_FEC_BASER;


 if (!eth_fec)
  eth_fec = ETHTOOL_FEC_OFF;

 return eth_fec;
}
