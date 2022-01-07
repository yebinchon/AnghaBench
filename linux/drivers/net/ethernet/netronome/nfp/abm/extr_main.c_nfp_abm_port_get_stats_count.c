
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfp_repr {struct nfp_abm_link* app_priv; } ;
struct nfp_port {scalar_t__ type; int netdev; } ;
struct nfp_app {int dummy; } ;
struct nfp_abm_link {TYPE_2__* vnic; } ;
struct TYPE_3__ {int num_r_vecs; } ;
struct TYPE_4__ {TYPE_1__ dp; } ;


 scalar_t__ NFP_PORT_PF_PORT ;
 struct nfp_repr* netdev_priv (int ) ;

__attribute__((used)) static int
nfp_abm_port_get_stats_count(struct nfp_app *app, struct nfp_port *port)
{
 struct nfp_repr *repr = netdev_priv(port->netdev);
 struct nfp_abm_link *alink;

 if (port->type != NFP_PORT_PF_PORT)
  return 0;
 alink = repr->app_priv;
 return alink->vnic->dp.num_r_vecs * 2;
}
