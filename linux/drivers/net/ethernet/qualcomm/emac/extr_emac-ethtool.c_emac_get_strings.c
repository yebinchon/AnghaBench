
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;


 unsigned int EMAC_STATS_LEN ;
 int ETH_GSTRING_LEN ;


 int * emac_ethtool_stat_strings ;
 int strcpy (int *,char*) ;
 int strlcpy (int *,int ,int ) ;

__attribute__((used)) static void emac_get_strings(struct net_device *netdev, u32 stringset, u8 *data)
{
 unsigned int i;

 switch (stringset) {
 case 129:
  strcpy(data, "single-pause-mode");
  break;

 case 128:
  for (i = 0; i < EMAC_STATS_LEN; i++) {
   strlcpy(data, emac_ethtool_stat_strings[i],
    ETH_GSTRING_LEN);
   data += ETH_GSTRING_LEN;
  }
  break;
 }
}
