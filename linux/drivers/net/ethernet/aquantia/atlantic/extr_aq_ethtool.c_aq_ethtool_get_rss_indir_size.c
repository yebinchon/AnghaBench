
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;


 int AQ_CFG_RSS_INDIRECTION_TABLE_MAX ;

__attribute__((used)) static u32 aq_ethtool_get_rss_indir_size(struct net_device *ndev)
{
 return AQ_CFG_RSS_INDIRECTION_TABLE_MAX;
}
