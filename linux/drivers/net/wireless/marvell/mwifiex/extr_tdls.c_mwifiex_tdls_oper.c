
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mwifiex_private {int dummy; } ;






 int mwifiex_tdls_process_config_link (struct mwifiex_private*,int const*) ;
 int mwifiex_tdls_process_create_link (struct mwifiex_private*,int const*) ;
 int mwifiex_tdls_process_disable_link (struct mwifiex_private*,int const*) ;
 int mwifiex_tdls_process_enable_link (struct mwifiex_private*,int const*) ;

int mwifiex_tdls_oper(struct mwifiex_private *priv, const u8 *peer, u8 action)
{
 switch (action) {
 case 128:
  return mwifiex_tdls_process_enable_link(priv, peer);
 case 129:
  return mwifiex_tdls_process_disable_link(priv, peer);
 case 130:
  return mwifiex_tdls_process_create_link(priv, peer);
 case 131:
  return mwifiex_tdls_process_config_link(priv, peer);
 }
 return 0;
}
