
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u32 ;


 scalar_t__ ETHTOOL_FEC_OFF_BIT ;
 scalar_t__ ETHTOOL_LINK_MODE_FEC_NONE_BIT ;
 int find_first_bit (int *,int) ;

__attribute__((used)) static u32 ethtool_fec2ethtool_caps(u_long ethtool_fec_code)
{
 u32 offset;

 offset = find_first_bit(&ethtool_fec_code, sizeof(u32));
 offset -= ETHTOOL_FEC_OFF_BIT;
 offset += ETHTOOL_LINK_MODE_FEC_NONE_BIT;

 return offset;
}
