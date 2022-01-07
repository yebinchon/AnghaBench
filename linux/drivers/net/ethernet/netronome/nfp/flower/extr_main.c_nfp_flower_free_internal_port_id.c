
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int port_ids; } ;
struct nfp_flower_priv {TYPE_1__ internal_ports; } ;
struct nfp_app {struct nfp_flower_priv* priv; } ;
struct net_device {int dummy; } ;


 int idr_remove (int *,int) ;
 int nfp_flower_lookup_internal_port_id (struct nfp_flower_priv*,struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void
nfp_flower_free_internal_port_id(struct nfp_app *app, struct net_device *netdev)
{
 struct nfp_flower_priv *priv = app->priv;
 int id;

 id = nfp_flower_lookup_internal_port_id(priv, netdev);
 if (!id)
  return;

 spin_lock_bh(&priv->internal_ports.lock);
 idr_remove(&priv->internal_ports.port_ids, id);
 spin_unlock_bh(&priv->internal_ports.lock);
}
