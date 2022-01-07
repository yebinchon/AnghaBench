
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int * l3mdev_ops; int priv_flags; } ;
struct ipvl_port {int pnet; struct net_device* dev; } ;


 int ASSERT_RTNL () ;
 int IFF_L3MDEV_RX_HANDLER ;
 int ipvlan_unregister_nf_hook (int ) ;
 int read_pnet (int *) ;

void ipvlan_l3s_unregister(struct ipvl_port *port)
{
 struct net_device *dev = port->dev;

 ASSERT_RTNL();

 dev->priv_flags &= ~IFF_L3MDEV_RX_HANDLER;
 ipvlan_unregister_nf_hook(read_pnet(&port->pnet));
 dev->l3mdev_ops = ((void*)0);
}
