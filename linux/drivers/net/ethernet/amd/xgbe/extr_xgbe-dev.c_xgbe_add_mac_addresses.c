
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ hash_table_size; } ;
struct xgbe_prv_data {TYPE_1__ hw_feat; } ;


 int xgbe_set_mac_addn_addrs (struct xgbe_prv_data*) ;
 int xgbe_set_mac_hash_table (struct xgbe_prv_data*) ;

__attribute__((used)) static int xgbe_add_mac_addresses(struct xgbe_prv_data *pdata)
{
 if (pdata->hw_feat.hash_table_size)
  xgbe_set_mac_hash_table(pdata);
 else
  xgbe_set_mac_addn_addrs(pdata);

 return 0;
}
