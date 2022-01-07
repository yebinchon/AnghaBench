
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwifiex_private {size_t bss_priority; struct mwifiex_adapter* adapter; } ;
struct mwifiex_bss_prio_tbl {int bss_prio_lock; int bss_prio_head; } ;
struct mwifiex_bss_prio_node {int list; struct mwifiex_private* priv; } ;
struct mwifiex_adapter {struct mwifiex_bss_prio_tbl* bss_prio_tbl; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct mwifiex_bss_prio_node* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int mwifiex_add_bss_prio_tbl(struct mwifiex_private *priv)
{
 struct mwifiex_adapter *adapter = priv->adapter;
 struct mwifiex_bss_prio_node *bss_prio;
 struct mwifiex_bss_prio_tbl *tbl = adapter->bss_prio_tbl;

 bss_prio = kzalloc(sizeof(struct mwifiex_bss_prio_node), GFP_KERNEL);
 if (!bss_prio)
  return -ENOMEM;

 bss_prio->priv = priv;
 INIT_LIST_HEAD(&bss_prio->list);

 spin_lock_bh(&tbl[priv->bss_priority].bss_prio_lock);
 list_add_tail(&bss_prio->list, &tbl[priv->bss_priority].bss_prio_head);
 spin_unlock_bh(&tbl[priv->bss_priority].bss_prio_lock);

 return 0;
}
