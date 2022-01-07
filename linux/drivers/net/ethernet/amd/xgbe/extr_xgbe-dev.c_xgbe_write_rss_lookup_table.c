
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int * rss_table; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int XGBE_RSS_LOOKUP_TABLE_TYPE ;
 int xgbe_write_rss_reg (struct xgbe_prv_data*,int ,unsigned int,int ) ;

__attribute__((used)) static int xgbe_write_rss_lookup_table(struct xgbe_prv_data *pdata)
{
 unsigned int i;
 int ret;

 for (i = 0; i < ARRAY_SIZE(pdata->rss_table); i++) {
  ret = xgbe_write_rss_reg(pdata,
      XGBE_RSS_LOOKUP_TABLE_TYPE, i,
      pdata->rss_table[i]);
  if (ret)
   return ret;
 }

 return 0;
}
