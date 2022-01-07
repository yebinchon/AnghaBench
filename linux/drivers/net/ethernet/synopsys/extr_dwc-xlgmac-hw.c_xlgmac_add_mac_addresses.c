
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ hash_table_size; } ;
struct xlgmac_pdata {TYPE_1__ hw_feat; } ;


 int xlgmac_set_mac_addn_addrs (struct xlgmac_pdata*) ;
 int xlgmac_set_mac_hash_table (struct xlgmac_pdata*) ;

__attribute__((used)) static int xlgmac_add_mac_addresses(struct xlgmac_pdata *pdata)
{
 if (pdata->hw_feat.hash_table_size)
  xlgmac_set_mac_hash_table(pdata);
 else
  xlgmac_set_mac_addn_addrs(pdata);

 return 0;
}
