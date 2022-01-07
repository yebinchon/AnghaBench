
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int netdev; } ;
struct nfp_net {TYPE_2__ dp; int max_rx_rings; struct nfp_abm_link* app_priv; } ;
struct nfp_eth_table_port {int index; } ;
struct nfp_app {TYPE_3__* pf; int cpp; struct nfp_abm* priv; } ;
struct nfp_abm_link {unsigned int id; struct nfp_abm_link* prio_map; int qdiscs; int dscp_map; struct nfp_net* vnic; int total_queues; struct nfp_abm* abm; } ;
struct nfp_abm {int prio_map_len; } ;
struct TYPE_6__ {TYPE_1__* eth_tbl; } ;
struct TYPE_4__ {struct nfp_eth_table_port* ports; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_RADIX_TREE (int *,int ) ;
 int kfree (struct nfp_abm_link*) ;
 void* kzalloc (int,int ) ;
 int netif_keep_dst (int ) ;
 int nfp_abm_ctrl_read_params (struct nfp_abm_link*) ;
 int nfp_abm_vnic_set_mac (TYPE_3__*,struct nfp_abm*,struct nfp_net*,unsigned int) ;
 int nfp_eth_set_configured (int ,int ,int) ;

__attribute__((used)) static int
nfp_abm_vnic_alloc(struct nfp_app *app, struct nfp_net *nn, unsigned int id)
{
 struct nfp_eth_table_port *eth_port = &app->pf->eth_tbl->ports[id];
 struct nfp_abm *abm = app->priv;
 struct nfp_abm_link *alink;
 int err;

 alink = kzalloc(sizeof(*alink), GFP_KERNEL);
 if (!alink)
  return -ENOMEM;
 nn->app_priv = alink;
 alink->abm = abm;
 alink->vnic = nn;
 alink->id = id;
 alink->total_queues = alink->vnic->max_rx_rings;

 INIT_LIST_HEAD(&alink->dscp_map);

 err = nfp_abm_ctrl_read_params(alink);
 if (err)
  goto err_free_alink;

 alink->prio_map = kzalloc(abm->prio_map_len, GFP_KERNEL);
 if (!alink->prio_map)
  goto err_free_alink;




 err = nfp_eth_set_configured(app->cpp, eth_port->index, 1);
 if (err < 0)
  goto err_free_priomap;

 netif_keep_dst(nn->dp.netdev);

 nfp_abm_vnic_set_mac(app->pf, abm, nn, id);
 INIT_RADIX_TREE(&alink->qdiscs, GFP_KERNEL);

 return 0;

err_free_priomap:
 kfree(alink->prio_map);
err_free_alink:
 kfree(alink);
 return err;
}
