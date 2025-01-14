
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mwifiex_private {scalar_t__ media_connected; scalar_t__ bss_started; TYPE_1__* adapter; } ;
struct TYPE_2__ {int priv_num; struct mwifiex_private** priv; } ;


 scalar_t__ GET_BSS_ROLE (struct mwifiex_private*) ;
 scalar_t__ MWIFIEX_BSS_ROLE_STA ;
 scalar_t__ MWIFIEX_BSS_ROLE_UAP ;

__attribute__((used)) static inline u8 mwifiex_is_any_intf_active(struct mwifiex_private *priv)
{
 struct mwifiex_private *priv_num;
 int i;

 for (i = 0; i < priv->adapter->priv_num; i++) {
  priv_num = priv->adapter->priv[i];
  if (priv_num) {
   if ((GET_BSS_ROLE(priv_num) == MWIFIEX_BSS_ROLE_UAP &&
        priv_num->bss_started) ||
       (GET_BSS_ROLE(priv_num) == MWIFIEX_BSS_ROLE_STA &&
        priv_num->media_connected))
    return 1;
  }
 }

 return 0;
}
