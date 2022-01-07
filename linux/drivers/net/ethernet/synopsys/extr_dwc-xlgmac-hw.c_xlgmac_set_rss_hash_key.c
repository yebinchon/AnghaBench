
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xlgmac_pdata {int rss_key; } ;


 int memcpy (int ,int const*,int) ;
 int xlgmac_write_rss_hash_key (struct xlgmac_pdata*) ;

__attribute__((used)) static int xlgmac_set_rss_hash_key(struct xlgmac_pdata *pdata, const u8 *key)
{
 memcpy(pdata->rss_key, key, sizeof(pdata->rss_key));

 return xlgmac_write_rss_hash_key(pdata);
}
