
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;


 int MVPP22_RSS_TABLE_ENTRIES ;
 scalar_t__ mvpp22_rss_is_supported () ;

__attribute__((used)) static u32 mvpp2_ethtool_get_rxfh_indir_size(struct net_device *dev)
{
 return mvpp22_rss_is_supported() ? MVPP22_RSS_TABLE_ENTRIES : 0;
}
