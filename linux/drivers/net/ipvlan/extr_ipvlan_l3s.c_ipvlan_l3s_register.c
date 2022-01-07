
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int priv_flags; int * l3mdev_ops; } ;
struct ipvl_port {int pnet; struct net_device* dev; } ;


 int ASSERT_RTNL () ;
 int IFF_L3MDEV_RX_HANDLER ;
 int ipvl_l3mdev_ops ;
 int ipvlan_register_nf_hook (int ) ;
 int read_pnet (int *) ;

int ipvlan_l3s_register(struct ipvl_port *port)
{
 struct net_device *dev = port->dev;
 int ret;

 ASSERT_RTNL();

 ret = ipvlan_register_nf_hook(read_pnet(&port->pnet));
 if (!ret) {
  dev->l3mdev_ops = &ipvl_l3mdev_ops;
  dev->priv_flags |= IFF_L3MDEV_RX_HANDLER;
 }

 return ret;
}
