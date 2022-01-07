
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlgmac_pdata {int * rss_table; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int XLGMAC_RSS_LOOKUP_TABLE_TYPE ;
 int xlgmac_write_rss_reg (struct xlgmac_pdata*,int ,unsigned int,int ) ;

__attribute__((used)) static int xlgmac_write_rss_lookup_table(struct xlgmac_pdata *pdata)
{
 unsigned int i;
 int ret;

 for (i = 0; i < ARRAY_SIZE(pdata->rss_table); i++) {
  ret = xlgmac_write_rss_reg(pdata,
        XLGMAC_RSS_LOOKUP_TABLE_TYPE, i,
        pdata->rss_table[i]);
  if (ret)
   return ret;
 }

 return 0;
}
