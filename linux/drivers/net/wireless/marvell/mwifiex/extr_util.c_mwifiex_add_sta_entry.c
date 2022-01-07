
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mwifiex_sta_node {int list; int mac_addr; } ;
struct mwifiex_private {int sta_list_spinlock; int sta_list; } ;


 int ETH_ALEN ;
 int GFP_ATOMIC ;
 struct mwifiex_sta_node* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int ,int const*,int ) ;
 struct mwifiex_sta_node* mwifiex_get_sta_entry (struct mwifiex_private*,int const*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

struct mwifiex_sta_node *
mwifiex_add_sta_entry(struct mwifiex_private *priv, const u8 *mac)
{
 struct mwifiex_sta_node *node;

 if (!mac)
  return ((void*)0);

 spin_lock_bh(&priv->sta_list_spinlock);
 node = mwifiex_get_sta_entry(priv, mac);
 if (node)
  goto done;

 node = kzalloc(sizeof(*node), GFP_ATOMIC);
 if (!node)
  goto done;

 memcpy(node->mac_addr, mac, ETH_ALEN);
 list_add_tail(&node->list, &priv->sta_list);

done:
 spin_unlock_bh(&priv->sta_list_spinlock);
 return node;
}
