
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgbe_prv_data {int * rss_table; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int DMCH ;
 int MAC_RSSDR ;
 int XGMAC_SET_BITS (int ,int ,int ,int const) ;
 int xgbe_write_rss_lookup_table (struct xgbe_prv_data*) ;

__attribute__((used)) static int xgbe_set_rss_lookup_table(struct xgbe_prv_data *pdata,
         const u32 *table)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(pdata->rss_table); i++)
  XGMAC_SET_BITS(pdata->rss_table[i], MAC_RSSDR, DMCH, table[i]);

 return xgbe_write_rss_lookup_table(pdata);
}
