
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_6__ {int dflt_fqid; int err_fqid; } ;
struct TYPE_7__ {TYPE_2__ non_rx_params; } ;
struct fman_port_params {TYPE_3__ specific_params; } ;
struct fman_port_dts_params {int qman_channel_id; } ;
struct TYPE_5__ {int major; } ;
struct fman_port {TYPE_4__* cfg; int port_speed; int port_type; TYPE_1__ rev_info; } ;
struct TYPE_8__ {int deq_high_priority; int dflt_fqid; scalar_t__ deq_sp; int err_fqid; int tx_fifo_deq_pipeline_depth; } ;


 int QMI_DEQ_CFG_SUBPORTAL_MASK ;
 int get_dflt_fifo_deq_pipeline_depth (int ,int ,int ) ;

__attribute__((used)) static void set_tx_dflt_cfg(struct fman_port *port,
       struct fman_port_params *port_params,
       struct fman_port_dts_params *dts_params)
{
 port->cfg->tx_fifo_deq_pipeline_depth =
  get_dflt_fifo_deq_pipeline_depth(port->rev_info.major,
       port->port_type,
       port->port_speed);
 port->cfg->err_fqid =
  port_params->specific_params.non_rx_params.err_fqid;
 port->cfg->deq_sp =
  (u8)(dts_params->qman_channel_id & QMI_DEQ_CFG_SUBPORTAL_MASK);
 port->cfg->dflt_fqid =
  port_params->specific_params.non_rx_params.dflt_fqid;
 port->cfg->deq_high_priority = 1;
}
