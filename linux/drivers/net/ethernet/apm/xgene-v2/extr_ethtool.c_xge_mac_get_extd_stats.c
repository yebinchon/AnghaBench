
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct xge_pdata {int dummy; } ;
struct TYPE_2__ {int value; int addr; } ;


 int XGE_EXTD_STATS_LEN ;
 TYPE_1__* gstrings_extd_stats ;
 scalar_t__ xge_rd_csr (struct xge_pdata*,int ) ;

__attribute__((used)) static void xge_mac_get_extd_stats(struct xge_pdata *pdata)
{
 u32 data;
 int i;

 for (i = 0; i < XGE_EXTD_STATS_LEN; i++) {
  data = xge_rd_csr(pdata, gstrings_extd_stats[i].addr);
  gstrings_extd_stats[i].value += data;
 }
}
