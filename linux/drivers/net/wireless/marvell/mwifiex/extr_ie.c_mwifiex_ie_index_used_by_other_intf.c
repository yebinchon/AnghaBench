
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct mwifiex_private {struct mwifiex_ie* mgmt_ie; struct mwifiex_adapter* adapter; } ;
struct mwifiex_ie {scalar_t__ ie_length; scalar_t__ mgmt_subtype_mask; } ;
struct mwifiex_adapter {int priv_num; struct mwifiex_private** priv; } ;



__attribute__((used)) static int
mwifiex_ie_index_used_by_other_intf(struct mwifiex_private *priv, u16 idx)
{
 int i;
 struct mwifiex_adapter *adapter = priv->adapter;
 struct mwifiex_ie *ie;

 for (i = 0; i < adapter->priv_num; i++) {
  if (adapter->priv[i] != priv) {
   ie = &adapter->priv[i]->mgmt_ie[idx];
   if (ie->mgmt_subtype_mask && ie->ie_length)
    return -1;
  }
 }

 return 0;
}
