
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_flower_priv {int non_repr_priv; } ;
struct nfp_flower_non_repr_priv {int list; struct net_device* netdev; } ;
struct nfp_app {struct nfp_flower_priv* priv; } ;
struct net_device {int dummy; } ;


 int GFP_KERNEL ;
 int __nfp_flower_non_repr_priv_get (struct nfp_flower_non_repr_priv*) ;
 struct nfp_flower_non_repr_priv* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 struct nfp_flower_non_repr_priv* nfp_flower_non_repr_priv_lookup (struct nfp_app*,struct net_device*) ;

struct nfp_flower_non_repr_priv *
nfp_flower_non_repr_priv_get(struct nfp_app *app, struct net_device *netdev)
{
 struct nfp_flower_priv *priv = app->priv;
 struct nfp_flower_non_repr_priv *entry;

 entry = nfp_flower_non_repr_priv_lookup(app, netdev);
 if (entry)
  goto inc_ref;

 entry = kzalloc(sizeof(*entry), GFP_KERNEL);
 if (!entry)
  return ((void*)0);

 entry->netdev = netdev;
 list_add(&entry->list, &priv->non_repr_priv);

inc_ref:
 __nfp_flower_non_repr_priv_get(entry);
 return entry;
}
