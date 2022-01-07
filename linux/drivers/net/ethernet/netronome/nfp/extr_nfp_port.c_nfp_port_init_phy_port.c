
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfp_port {int eth_id; scalar_t__ eth_stats; TYPE_1__* eth_port; int type; } ;
struct nfp_pf {scalar_t__ mac_stats_mem; TYPE_2__* eth_tbl; } ;
struct nfp_app {int cpp; } ;
struct TYPE_4__ {unsigned int count; TYPE_1__* ports; } ;
struct TYPE_3__ {int index; scalar_t__ override_changed; } ;


 int EINVAL ;
 int NFP_MAC_STATS_SIZE ;
 int NFP_PORT_INVALID ;
 int nfp_err (int ,char*,unsigned int) ;
 int nfp_warn (int ,char*,int) ;

int nfp_port_init_phy_port(struct nfp_pf *pf, struct nfp_app *app,
      struct nfp_port *port, unsigned int id)
{

 if (!pf->eth_tbl || id >= pf->eth_tbl->count) {
  nfp_err(app->cpp,
   "NSP port entries don't match vNICs (no entry %d)\n",
   id);
  return -EINVAL;
 }
 if (pf->eth_tbl->ports[id].override_changed) {
  nfp_warn(app->cpp,
    "Config changed for port #%d, reboot required before port will be operational\n",
    pf->eth_tbl->ports[id].index);
  port->type = NFP_PORT_INVALID;
  return 0;
 }

 port->eth_port = &pf->eth_tbl->ports[id];
 port->eth_id = pf->eth_tbl->ports[id].index;
 if (pf->mac_stats_mem)
  port->eth_stats =
   pf->mac_stats_mem + port->eth_id * NFP_MAC_STATS_SIZE;

 return 0;
}
