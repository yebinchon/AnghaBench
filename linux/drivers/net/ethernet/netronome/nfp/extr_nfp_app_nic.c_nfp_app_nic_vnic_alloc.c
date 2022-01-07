
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int netdev; } ;
struct nfp_net {int port; TYPE_1__ dp; } ;
struct nfp_app {int pf; } ;


 int nfp_app_nic_vnic_init_phy_port (int ,struct nfp_app*,struct nfp_net*,unsigned int) ;
 int nfp_net_get_mac_addr (int ,int ,int ) ;

int nfp_app_nic_vnic_alloc(struct nfp_app *app, struct nfp_net *nn,
      unsigned int id)
{
 int err;

 err = nfp_app_nic_vnic_init_phy_port(app->pf, app, nn, id);
 if (err)
  return err < 0 ? err : 0;

 nfp_net_get_mac_addr(app->pf, nn->dp.netdev, nn->port);

 return 0;
}
