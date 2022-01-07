
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;


 int ETH_GSTRING_LEN ;
 scalar_t__ ETH_SS_STATS ;
 int SILAN_STATS_NUM ;
 int memcpy (int *,int ,int) ;
 int sc92031_ethtool_stats_strings ;

__attribute__((used)) static void sc92031_ethtool_get_strings(struct net_device *dev,
  u32 stringset, u8 *data)
{
 if (stringset == ETH_SS_STATS)
  memcpy(data, sc92031_ethtool_stats_strings,
    SILAN_STATS_NUM * ETH_GSTRING_LEN);
}
