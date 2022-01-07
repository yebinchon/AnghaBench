
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mwifiex_sta_node {int is_11n_enabled; } ;
struct mwifiex_private {int dummy; } ;


 struct mwifiex_sta_node* mwifiex_get_sta_entry (struct mwifiex_private*,int const*) ;

__attribute__((used)) static inline u8
mwifiex_tdls_peer_11n_enabled(struct mwifiex_private *priv, const u8 *ra)
{
 struct mwifiex_sta_node *node = mwifiex_get_sta_entry(priv, ra);
 if (node)
  return node->is_11n_enabled;

 return 0;
}
