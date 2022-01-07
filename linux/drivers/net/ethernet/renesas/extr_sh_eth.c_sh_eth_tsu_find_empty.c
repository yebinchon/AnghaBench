
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
typedef int blank ;


 int ENOMEM ;
 int ETH_ALEN ;
 int memset (int *,int ,int) ;
 int sh_eth_tsu_find_entry (struct net_device*,int *) ;

__attribute__((used)) static int sh_eth_tsu_find_empty(struct net_device *ndev)
{
 u8 blank[ETH_ALEN];
 int entry;

 memset(blank, 0, sizeof(blank));
 entry = sh_eth_tsu_find_entry(ndev, blank);
 return (entry < 0) ? -ENOMEM : entry;
}
