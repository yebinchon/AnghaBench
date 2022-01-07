
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_flower_non_repr_priv {int dummy; } ;
struct nfp_app {int dummy; } ;
struct net_device {int dummy; } ;


 int __nfp_flower_non_repr_priv_put (struct nfp_flower_non_repr_priv*) ;
 struct nfp_flower_non_repr_priv* nfp_flower_non_repr_priv_lookup (struct nfp_app*,struct net_device*) ;

void
nfp_flower_non_repr_priv_put(struct nfp_app *app, struct net_device *netdev)
{
 struct nfp_flower_non_repr_priv *entry;

 entry = nfp_flower_non_repr_priv_lookup(app, netdev);
 if (!entry)
  return;

 __nfp_flower_non_repr_priv_put(entry);
}
