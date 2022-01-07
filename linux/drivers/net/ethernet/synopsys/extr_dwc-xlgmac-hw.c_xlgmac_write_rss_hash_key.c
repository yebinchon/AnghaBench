
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xlgmac_pdata {int rss_key; } ;


 int XLGMAC_RSS_HASH_KEY_TYPE ;
 int xlgmac_write_rss_reg (struct xlgmac_pdata*,int ,unsigned int,int ) ;

__attribute__((used)) static int xlgmac_write_rss_hash_key(struct xlgmac_pdata *pdata)
{
 unsigned int key_regs = sizeof(pdata->rss_key) / sizeof(u32);
 unsigned int *key = (unsigned int *)&pdata->rss_key;
 int ret;

 while (key_regs--) {
  ret = xlgmac_write_rss_reg(pdata, XLGMAC_RSS_HASH_KEY_TYPE,
        key_regs, *key++);
  if (ret)
   return ret;
 }

 return 0;
}
