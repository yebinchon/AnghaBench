
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int ETH_SS_STATS ;
 int GMAC_STATS_NUM ;

__attribute__((used)) static int gmac_get_sset_count(struct net_device *netdev, int sset)
{
 return sset == ETH_SS_STATS ? GMAC_STATS_NUM : 0;
}
