
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int port_ids; } ;
struct nfp_flower_priv {TYPE_1__ internal_ports; } ;
struct nfp_app {struct nfp_flower_priv* priv; } ;
struct net_device {int dummy; } ;


 struct net_device* idr_find (int *,int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static struct net_device *
nfp_flower_get_netdev_from_internal_port_id(struct nfp_app *app, int port_id)
{
 struct nfp_flower_priv *priv = app->priv;
 struct net_device *netdev;

 rcu_read_lock();
 netdev = idr_find(&priv->internal_ports.port_ids, port_id);
 rcu_read_unlock();

 return netdev;
}
