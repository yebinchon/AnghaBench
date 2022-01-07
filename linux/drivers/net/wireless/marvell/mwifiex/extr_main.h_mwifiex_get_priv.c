
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwifiex_private {int dummy; } ;
struct mwifiex_adapter {int priv_num; struct mwifiex_private** priv; } ;
typedef enum mwifiex_bss_role { ____Placeholder_mwifiex_bss_role } mwifiex_bss_role ;


 int GET_BSS_ROLE (struct mwifiex_private*) ;
 int MWIFIEX_BSS_ROLE_ANY ;

__attribute__((used)) static inline struct mwifiex_private *
mwifiex_get_priv(struct mwifiex_adapter *adapter,
   enum mwifiex_bss_role bss_role)
{
 int i;

 for (i = 0; i < adapter->priv_num; i++) {
  if (adapter->priv[i]) {
   if (bss_role == MWIFIEX_BSS_ROLE_ANY ||
       GET_BSS_ROLE(adapter->priv[i]) == bss_role)
    break;
  }
 }

 return ((i < adapter->priv_num) ? adapter->priv[i] : ((void*)0));
}
