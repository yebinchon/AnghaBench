
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xgbe_prv_data {int rss_key; } ;


 int memcpy (int ,int const*,int) ;
 int xgbe_write_rss_hash_key (struct xgbe_prv_data*) ;

__attribute__((used)) static int xgbe_set_rss_hash_key(struct xgbe_prv_data *pdata, const u8 *key)
{
 memcpy(pdata->rss_key, key, sizeof(pdata->rss_key));

 return xgbe_write_rss_hash_key(pdata);
}
