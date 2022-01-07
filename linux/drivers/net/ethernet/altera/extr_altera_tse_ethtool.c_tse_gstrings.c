
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;


 int ETH_GSTRING_LEN ;
 int TSE_STATS_LEN ;
 int memcpy (int *,int ,int) ;
 int stat_gstrings ;

__attribute__((used)) static void tse_gstrings(struct net_device *dev, u32 stringset, u8 *buf)
{
 memcpy(buf, stat_gstrings, TSE_STATS_LEN * ETH_GSTRING_LEN);
}
