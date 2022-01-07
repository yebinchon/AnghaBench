
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwifiex_private {int dummy; } ;
struct mwifiex_adapter {int priv_num; struct mwifiex_private** priv; } ;


 int mwifiex_deauthenticate (struct mwifiex_private*,int *) ;

void mwifiex_deauthenticate_all(struct mwifiex_adapter *adapter)
{
 struct mwifiex_private *priv;
 int i;

 for (i = 0; i < adapter->priv_num; i++) {
  priv = adapter->priv[i];
  if (priv)
   mwifiex_deauthenticate(priv, ((void*)0));
 }
}
