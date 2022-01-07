
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct adapter {int dummy; } ;


 int LKPTBLQUEUE0_G (int ) ;
 int LKPTBLQUEUE1_G (int ) ;
 int rd_rss_row (struct adapter*,int,int *) ;
 int t4_chip_rss_size (struct adapter*) ;

int t4_read_rss(struct adapter *adapter, u16 *map)
{
 int i, ret, nentries;
 u32 val;

 nentries = t4_chip_rss_size(adapter);
 for (i = 0; i < nentries / 2; ++i) {
  ret = rd_rss_row(adapter, i, &val);
  if (ret)
   return ret;
  *map++ = LKPTBLQUEUE0_G(val);
  *map++ = LKPTBLQUEUE1_G(val);
 }
 return 0;
}
