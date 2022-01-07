
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwifiex_private {int dummy; } ;


 int mwifiex_config_tdls (struct mwifiex_private*,int) ;

int mwifiex_config_tdls_disable(struct mwifiex_private *priv)
{
 return mwifiex_config_tdls(priv, 0);
}
