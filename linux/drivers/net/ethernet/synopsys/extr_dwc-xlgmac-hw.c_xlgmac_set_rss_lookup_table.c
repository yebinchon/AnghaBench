
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xlgmac_pdata {int * rss_table; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int MAC_RSSDR_DMCH_LEN ;
 int MAC_RSSDR_DMCH_POS ;
 int XLGMAC_SET_REG_BITS (int ,int ,int ,int ) ;
 int xlgmac_write_rss_lookup_table (struct xlgmac_pdata*) ;

__attribute__((used)) static int xlgmac_set_rss_lookup_table(struct xlgmac_pdata *pdata,
           const u32 *table)
{
 unsigned int i;
 u32 tval;

 for (i = 0; i < ARRAY_SIZE(pdata->rss_table); i++) {
  tval = table[i];
  pdata->rss_table[i] = XLGMAC_SET_REG_BITS(
      pdata->rss_table[i],
      MAC_RSSDR_DMCH_POS,
      MAC_RSSDR_DMCH_LEN,
      tval);
 }

 return xlgmac_write_rss_lookup_table(pdata);
}
