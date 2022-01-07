
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tg3 {int * rss_ind_tbl; } ;


 int TG3_RSS_INDIR_TBL_SIZE ;
 int ethtool_rxfh_indir_default (int,int ) ;

__attribute__((used)) static void tg3_rss_init_dflt_indir_tbl(struct tg3 *tp, u32 qcnt)
{
 int i;

 for (i = 0; i < TG3_RSS_INDIR_TBL_SIZE; i++)
  tp->rss_ind_tbl[i] = ethtool_rxfh_indir_default(i, qcnt);
}
