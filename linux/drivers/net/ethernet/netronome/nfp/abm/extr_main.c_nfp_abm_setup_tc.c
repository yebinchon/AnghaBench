
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_repr {int app_priv; } ;
struct nfp_port {scalar_t__ type; } ;
struct nfp_app {int dummy; } ;
struct net_device {int dummy; } ;
typedef enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;


 int EOPNOTSUPP ;
 scalar_t__ NFP_PORT_PF_PORT ;





 struct nfp_repr* netdev_priv (struct net_device*) ;
 int nfp_abm_setup_cls_block (struct net_device*,struct nfp_repr*,void*) ;
 int nfp_abm_setup_root (struct net_device*,int ,void*) ;
 int nfp_abm_setup_tc_gred (struct net_device*,int ,void*) ;
 int nfp_abm_setup_tc_mq (struct net_device*,int ,void*) ;
 int nfp_abm_setup_tc_red (struct net_device*,int ,void*) ;
 struct nfp_port* nfp_port_from_netdev (struct net_device*) ;

__attribute__((used)) static int
nfp_abm_setup_tc(struct nfp_app *app, struct net_device *netdev,
   enum tc_setup_type type, void *type_data)
{
 struct nfp_repr *repr = netdev_priv(netdev);
 struct nfp_port *port;

 port = nfp_port_from_netdev(netdev);
 if (!port || port->type != NFP_PORT_PF_PORT)
  return -EOPNOTSUPP;

 switch (type) {
 case 128:
  return nfp_abm_setup_root(netdev, repr->app_priv, type_data);
 case 130:
  return nfp_abm_setup_tc_mq(netdev, repr->app_priv, type_data);
 case 129:
  return nfp_abm_setup_tc_red(netdev, repr->app_priv, type_data);
 case 131:
  return nfp_abm_setup_tc_gred(netdev, repr->app_priv, type_data);
 case 132:
  return nfp_abm_setup_cls_block(netdev, repr, type_data);
 default:
  return -EOPNOTSUPP;
 }
}
