
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_net {int dummy; } ;
struct net_device {int name; } ;


 struct nfp_net* netdev_priv (struct net_device*) ;
 int nfp_net_clear_config_and_disable (struct nfp_net*) ;
 int nfp_net_close_free_all (struct nfp_net*) ;
 int nfp_net_close_stack (struct nfp_net*) ;
 int nfp_port_configure (struct net_device*,int) ;
 int nn_dbg (struct nfp_net*,char*,int ) ;

__attribute__((used)) static int nfp_net_netdev_close(struct net_device *netdev)
{
 struct nfp_net *nn = netdev_priv(netdev);



 nfp_net_close_stack(nn);



 nfp_net_clear_config_and_disable(nn);
 nfp_port_configure(netdev, 0);



 nfp_net_close_free_all(nn);

 nn_dbg(nn, "%s down", netdev->name);
 return 0;
}
