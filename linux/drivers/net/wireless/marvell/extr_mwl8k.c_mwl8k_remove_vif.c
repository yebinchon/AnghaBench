
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwl8k_vif {int macid; int list; } ;
struct mwl8k_priv {int macids_used; } ;


 int list_del (int *) ;

__attribute__((used)) static void mwl8k_remove_vif(struct mwl8k_priv *priv, struct mwl8k_vif *vif)
{

 if (!priv->macids_used)
  return;

 priv->macids_used &= ~(1 << vif->macid);
 list_del(&vif->list);
}
