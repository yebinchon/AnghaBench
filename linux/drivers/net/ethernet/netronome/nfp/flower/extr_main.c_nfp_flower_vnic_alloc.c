
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int netdev; } ;
struct nfp_net {int vnic_no_name; int port; TYPE_1__ dp; } ;
struct nfp_app {int cpp; } ;


 int NFP_PORT_INVALID ;
 int PTR_ERR_OR_ZERO (int ) ;
 int eth_hw_addr_random (int ) ;
 int netif_keep_dst (int ) ;
 int nfp_port_alloc (struct nfp_app*,int ,int ) ;
 int nfp_warn (int ,char*) ;

__attribute__((used)) static int nfp_flower_vnic_alloc(struct nfp_app *app, struct nfp_net *nn,
     unsigned int id)
{
 if (id > 0) {
  nfp_warn(app->cpp, "FlowerNIC doesn't support more than one data vNIC\n");
  goto err_invalid_port;
 }

 eth_hw_addr_random(nn->dp.netdev);
 netif_keep_dst(nn->dp.netdev);
 nn->vnic_no_name = 1;

 return 0;

err_invalid_port:
 nn->port = nfp_port_alloc(app, NFP_PORT_INVALID, nn->dp.netdev);
 return PTR_ERR_OR_ZERO(nn->port);
}
