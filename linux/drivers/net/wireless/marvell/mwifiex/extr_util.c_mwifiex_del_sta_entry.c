
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mwifiex_sta_node {int list; } ;
struct mwifiex_private {int sta_list_spinlock; } ;


 int kfree (struct mwifiex_sta_node*) ;
 int list_del (int *) ;
 struct mwifiex_sta_node* mwifiex_get_sta_entry (struct mwifiex_private*,int const*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void mwifiex_del_sta_entry(struct mwifiex_private *priv, const u8 *mac)
{
 struct mwifiex_sta_node *node;

 spin_lock_bh(&priv->sta_list_spinlock);

 node = mwifiex_get_sta_entry(priv, mac);
 if (node) {
  list_del(&node->list);
  kfree(node);
 }

 spin_unlock_bh(&priv->sta_list_spinlock);
 return;
}
