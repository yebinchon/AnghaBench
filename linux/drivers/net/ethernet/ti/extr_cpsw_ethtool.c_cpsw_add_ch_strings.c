
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int stat_string; } ;


 int CPSW_STATS_CH_LEN ;
 int ETH_GSTRING_LEN ;
 TYPE_1__* cpsw_gstrings_ch_stats ;
 int snprintf (int *,int ,char*,char*,long,int ) ;

__attribute__((used)) static void cpsw_add_ch_strings(u8 **p, int ch_num, int rx_dir)
{
 int ch_stats_len;
 int line;
 int i;

 ch_stats_len = CPSW_STATS_CH_LEN * ch_num;
 for (i = 0; i < ch_stats_len; i++) {
  line = i % CPSW_STATS_CH_LEN;
  snprintf(*p, ETH_GSTRING_LEN,
    "%s DMA chan %ld: %s", rx_dir ? "Rx" : "Tx",
    (long)(i / CPSW_STATS_CH_LEN),
    cpsw_gstrings_ch_stats[line].stat_string);
  *p += ETH_GSTRING_LEN;
 }
}
