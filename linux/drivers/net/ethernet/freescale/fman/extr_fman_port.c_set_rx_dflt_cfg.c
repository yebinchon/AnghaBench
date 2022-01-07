
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int pcd_fqs_count; int pcd_base_fqid; int dflt_fqid; int err_fqid; int ext_buf_pools; } ;
struct TYPE_6__ {TYPE_2__ rx_params; } ;
struct fman_port_params {TYPE_3__ specific_params; } ;
struct fman_port {TYPE_1__* cfg; } ;
struct fman_ext_pools {int dummy; } ;
struct TYPE_4__ {int pcd_fqs_count; int pcd_base_fqid; int dflt_fqid; int err_fqid; int ext_buf_pools; int discard_mask; } ;


 int DFLT_PORT_ERRORS_TO_DISCARD ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static void set_rx_dflt_cfg(struct fman_port *port,
       struct fman_port_params *port_params)
{
 port->cfg->discard_mask = DFLT_PORT_ERRORS_TO_DISCARD;

 memcpy(&port->cfg->ext_buf_pools,
        &port_params->specific_params.rx_params.ext_buf_pools,
        sizeof(struct fman_ext_pools));
 port->cfg->err_fqid =
  port_params->specific_params.rx_params.err_fqid;
 port->cfg->dflt_fqid =
  port_params->specific_params.rx_params.dflt_fqid;
 port->cfg->pcd_base_fqid =
  port_params->specific_params.rx_params.pcd_base_fqid;
 port->cfg->pcd_fqs_count =
  port_params->specific_params.rx_params.pcd_fqs_count;
}
