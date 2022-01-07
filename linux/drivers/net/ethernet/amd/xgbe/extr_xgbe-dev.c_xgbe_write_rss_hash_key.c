
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgbe_prv_data {int rss_key; } ;


 int XGBE_RSS_HASH_KEY_TYPE ;
 int xgbe_write_rss_reg (struct xgbe_prv_data*,int ,unsigned int,int ) ;

__attribute__((used)) static int xgbe_write_rss_hash_key(struct xgbe_prv_data *pdata)
{
 unsigned int key_regs = sizeof(pdata->rss_key) / sizeof(u32);
 unsigned int *key = (unsigned int *)&pdata->rss_key;
 int ret;

 while (key_regs--) {
  ret = xgbe_write_rss_reg(pdata, XGBE_RSS_HASH_KEY_TYPE,
      key_regs, *key++);
  if (ret)
   return ret;
 }

 return 0;
}
