
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct mwifiex_private {scalar_t__ bss_num; scalar_t__ bss_type; } ;
struct mwifiex_adapter {int priv_num; struct mwifiex_private** priv; } ;



__attribute__((used)) static inline struct mwifiex_private *
mwifiex_get_priv_by_id(struct mwifiex_adapter *adapter,
         u8 bss_num, u8 bss_type)
{
 int i;

 for (i = 0; i < adapter->priv_num; i++) {
  if (adapter->priv[i]) {
   if ((adapter->priv[i]->bss_num == bss_num) &&
       (adapter->priv[i]->bss_type == bss_type))
    break;
  }
 }
 return ((i < adapter->priv_num) ? adapter->priv[i] : ((void*)0));
}
