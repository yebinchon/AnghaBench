
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct octeon_soft_command {scalar_t__ virtrptr; } ;
struct nic_tx_stats {int fw_tx_vxlan; int fw_err_tso; int fw_tso_fwd; int fw_tso; int fw_err_drop; int fw_err_link; int fw_err_pki; int fw_err_pko; int fw_total_bcast_sent; int fw_total_mcast_sent; int fw_total_fwd; int fw_total_sent; int total_collisions; int runts; int fifo_err; int max_deferral_fail; int max_collision_fail; int multi_collision_sent; int one_collision_sent; int ctl_sent; int bcast_pkts_sent; int mcast_pkts_sent; int total_bytes_sent; int total_pkts_sent; } ;
struct nic_rx_stats {int fwd_rate; int fw_lro_aborts_timer; int fw_lro_aborts_tsval; int fw_lro_aborts_seq; int fw_lro_aborts_port; int fw_lro_aborts; int fw_total_lro; int fw_lro_octs; int fw_lro_pkts; int fw_rx_vxlan_err; int fw_rx_vxlan; int fw_err_drop; int fw_err_link; int fw_err_pko; int fw_total_bcast; int fw_total_mcast; int fw_total_fwd; int fw_total_rcvd; int red_drops; int frame_err; int l2_err; int jabber_err; int fcs_err; int dmac_drop; int fifo_err; int ctl_rcvd; int runts; int total_mcst; int total_bcst; int bytes_rcvd; int total_rcvd; } ;
struct TYPE_5__ {struct nic_tx_stats fromhost; struct nic_rx_stats fromwire; } ;
struct octeon_device {TYPE_1__* pci_dev; TYPE_2__ link_stats; } ;
struct TYPE_6__ {struct nic_tx_stats fromhost; struct nic_rx_stats fromwire; } ;
struct oct_nic_stats_resp {int status; TYPE_3__ stats; } ;
struct oct_link_stats {int dummy; } ;
struct TYPE_4__ {int dev; } ;


 scalar_t__ OCTEON_REQUEST_TIMEOUT ;
 int dev_err (int *,char*) ;
 int octeon_swap_8B_data (int *,int) ;

__attribute__((used)) static void
octnet_nic_stats_callback(struct octeon_device *oct_dev,
     u32 status, void *ptr)
{
 struct octeon_soft_command *sc = (struct octeon_soft_command *)ptr;
 struct oct_nic_stats_resp *resp =
     (struct oct_nic_stats_resp *)sc->virtrptr;
 struct nic_rx_stats *rsp_rstats = &resp->stats.fromwire;
 struct nic_tx_stats *rsp_tstats = &resp->stats.fromhost;
 struct nic_rx_stats *rstats = &oct_dev->link_stats.fromwire;
 struct nic_tx_stats *tstats = &oct_dev->link_stats.fromhost;

 if (status != OCTEON_REQUEST_TIMEOUT && !resp->status) {
  octeon_swap_8B_data((u64 *)&resp->stats,
        (sizeof(struct oct_link_stats)) >> 3);


  rstats->total_rcvd = rsp_rstats->total_rcvd;
  rstats->bytes_rcvd = rsp_rstats->bytes_rcvd;
  rstats->total_bcst = rsp_rstats->total_bcst;
  rstats->total_mcst = rsp_rstats->total_mcst;
  rstats->runts = rsp_rstats->runts;
  rstats->ctl_rcvd = rsp_rstats->ctl_rcvd;

  rstats->fifo_err = rsp_rstats->fifo_err;
  rstats->dmac_drop = rsp_rstats->dmac_drop;
  rstats->fcs_err = rsp_rstats->fcs_err;
  rstats->jabber_err = rsp_rstats->jabber_err;
  rstats->l2_err = rsp_rstats->l2_err;
  rstats->frame_err = rsp_rstats->frame_err;
  rstats->red_drops = rsp_rstats->red_drops;


  rstats->fw_total_rcvd = rsp_rstats->fw_total_rcvd;
  rstats->fw_total_fwd = rsp_rstats->fw_total_fwd;
  rstats->fw_total_mcast = rsp_rstats->fw_total_mcast;
  rstats->fw_total_bcast = rsp_rstats->fw_total_bcast;
  rstats->fw_err_pko = rsp_rstats->fw_err_pko;
  rstats->fw_err_link = rsp_rstats->fw_err_link;
  rstats->fw_err_drop = rsp_rstats->fw_err_drop;
  rstats->fw_rx_vxlan = rsp_rstats->fw_rx_vxlan;
  rstats->fw_rx_vxlan_err = rsp_rstats->fw_rx_vxlan_err;


  rstats->fw_lro_pkts = rsp_rstats->fw_lro_pkts;

  rstats->fw_lro_octs = rsp_rstats->fw_lro_octs;

  rstats->fw_total_lro = rsp_rstats->fw_total_lro;

  rstats->fw_lro_aborts = rsp_rstats->fw_lro_aborts;
  rstats->fw_lro_aborts_port = rsp_rstats->fw_lro_aborts_port;
  rstats->fw_lro_aborts_seq = rsp_rstats->fw_lro_aborts_seq;
  rstats->fw_lro_aborts_tsval = rsp_rstats->fw_lro_aborts_tsval;
  rstats->fw_lro_aborts_timer = rsp_rstats->fw_lro_aborts_timer;

  rstats->fwd_rate = rsp_rstats->fwd_rate;


  tstats->total_pkts_sent = rsp_tstats->total_pkts_sent;
  tstats->total_bytes_sent = rsp_tstats->total_bytes_sent;
  tstats->mcast_pkts_sent = rsp_tstats->mcast_pkts_sent;
  tstats->bcast_pkts_sent = rsp_tstats->bcast_pkts_sent;
  tstats->ctl_sent = rsp_tstats->ctl_sent;

  tstats->one_collision_sent = rsp_tstats->one_collision_sent;

  tstats->multi_collision_sent = rsp_tstats->multi_collision_sent;

  tstats->max_collision_fail = rsp_tstats->max_collision_fail;

  tstats->max_deferral_fail = rsp_tstats->max_deferral_fail;

  tstats->fifo_err = rsp_tstats->fifo_err;
  tstats->runts = rsp_tstats->runts;

  tstats->total_collisions = rsp_tstats->total_collisions;


  tstats->fw_total_sent = rsp_tstats->fw_total_sent;
  tstats->fw_total_fwd = rsp_tstats->fw_total_fwd;
  tstats->fw_total_mcast_sent = rsp_tstats->fw_total_mcast_sent;
  tstats->fw_total_bcast_sent = rsp_tstats->fw_total_bcast_sent;
  tstats->fw_err_pko = rsp_tstats->fw_err_pko;
  tstats->fw_err_pki = rsp_tstats->fw_err_pki;
  tstats->fw_err_link = rsp_tstats->fw_err_link;
  tstats->fw_err_drop = rsp_tstats->fw_err_drop;
  tstats->fw_tso = rsp_tstats->fw_tso;
  tstats->fw_tso_fwd = rsp_tstats->fw_tso_fwd;
  tstats->fw_err_tso = rsp_tstats->fw_err_tso;
  tstats->fw_tx_vxlan = rsp_tstats->fw_tx_vxlan;

  resp->status = 1;
 } else {
  dev_err(&oct_dev->pci_dev->dev, "sc OPCODE_NIC_PORT_STATS command failed\n");
  resp->status = -1;
 }
}
