
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int port_ids; } ;
struct nfp_flower_priv {TYPE_1__ internal_ports; } ;
struct nfp_app {struct nfp_flower_priv* priv; } ;
struct net_device {int dummy; } ;


 int GFP_ATOMIC ;
 int NFP_MAX_INT_PORT_ID ;
 int NFP_MIN_INT_PORT_ID ;
 int idr_alloc (int *,struct net_device*,int ,int ,int ) ;
 int idr_preload (int ) ;
 int idr_preload_end () ;
 int nfp_flower_lookup_internal_port_id (struct nfp_flower_priv*,struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int
nfp_flower_get_internal_port_id(struct nfp_app *app, struct net_device *netdev)
{
 struct nfp_flower_priv *priv = app->priv;
 int id;

 id = nfp_flower_lookup_internal_port_id(priv, netdev);
 if (id > 0)
  return id;

 idr_preload(GFP_ATOMIC);
 spin_lock_bh(&priv->internal_ports.lock);
 id = idr_alloc(&priv->internal_ports.port_ids, netdev,
         NFP_MIN_INT_PORT_ID, NFP_MAX_INT_PORT_ID, GFP_ATOMIC);
 spin_unlock_bh(&priv->internal_ports.lock);
 idr_preload_end();

 return id;
}
