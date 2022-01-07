
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct cpsw_common {int tx_ch_num; int rx_ch_num; } ;
struct TYPE_2__ {int stat_string; } ;


 int CPSW_STATS_COMMON_LEN ;
 int ETH_GSTRING_LEN ;

 int cpsw_add_ch_strings (int **,int ,int) ;
 TYPE_1__* cpsw_gstrings_stats ;
 int memcpy (int *,int ,int ) ;
 struct cpsw_common* ndev_to_cpsw (struct net_device*) ;

void cpsw_get_strings(struct net_device *ndev, u32 stringset, u8 *data)
{
 struct cpsw_common *cpsw = ndev_to_cpsw(ndev);
 u8 *p = data;
 int i;

 switch (stringset) {
 case 128:
  for (i = 0; i < CPSW_STATS_COMMON_LEN; i++) {
   memcpy(p, cpsw_gstrings_stats[i].stat_string,
          ETH_GSTRING_LEN);
   p += ETH_GSTRING_LEN;
  }

  cpsw_add_ch_strings(&p, cpsw->rx_ch_num, 1);
  cpsw_add_ch_strings(&p, cpsw->tx_ch_num, 0);
  break;
 }
}
