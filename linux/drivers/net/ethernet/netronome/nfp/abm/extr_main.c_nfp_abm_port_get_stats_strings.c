
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct nfp_repr {struct nfp_abm_link* app_priv; } ;
struct nfp_port {scalar_t__ type; int netdev; } ;
struct nfp_app {int dummy; } ;
struct nfp_abm_link {TYPE_2__* vnic; } ;
struct TYPE_3__ {unsigned int num_r_vecs; } ;
struct TYPE_4__ {TYPE_1__ dp; } ;


 scalar_t__ NFP_PORT_PF_PORT ;
 struct nfp_repr* netdev_priv (int ) ;
 int * nfp_pr_et (int *,char*,unsigned int) ;

__attribute__((used)) static u8 *
nfp_abm_port_get_stats_strings(struct nfp_app *app, struct nfp_port *port,
          u8 *data)
{
 struct nfp_repr *repr = netdev_priv(port->netdev);
 struct nfp_abm_link *alink;
 unsigned int i;

 if (port->type != NFP_PORT_PF_PORT)
  return data;
 alink = repr->app_priv;
 for (i = 0; i < alink->vnic->dp.num_r_vecs; i++) {
  data = nfp_pr_et(data, "q%u_no_wait", i);
  data = nfp_pr_et(data, "q%u_delayed", i);
 }
 return data;
}
