
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;


 int CAS_NUM_STAT_KEYS ;
 int ETH_GSTRING_LEN ;
 int ethtool_cassini_statnames ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static void cas_get_strings(struct net_device *dev, u32 stringset, u8 *data)
{
  memcpy(data, &ethtool_cassini_statnames,
      CAS_NUM_STAT_KEYS * ETH_GSTRING_LEN);
}
