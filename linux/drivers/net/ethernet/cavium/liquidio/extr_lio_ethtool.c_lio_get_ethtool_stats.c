
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct rtnl_link_stats64 {scalar_t__ tx_dropped; scalar_t__ rx_dropped; scalar_t__ tx_errors; scalar_t__ rx_errors; scalar_t__ tx_bytes; scalar_t__ rx_bytes; scalar_t__ tx_packets; scalar_t__ rx_packets; } ;
struct TYPE_16__ {int iq; int oq; } ;
struct TYPE_12__ {scalar_t__ fcs_err; scalar_t__ dmac_drop; scalar_t__ fifo_err; scalar_t__ ctl_rcvd; scalar_t__ runts; scalar_t__ total_mcst; scalar_t__ total_bcst; scalar_t__ bytes_rcvd; scalar_t__ total_rcvd; scalar_t__ fwd_rate; scalar_t__ fw_lro_aborts_timer; scalar_t__ fw_lro_aborts_tsval; scalar_t__ fw_lro_aborts_seq; scalar_t__ fw_lro_aborts_port; scalar_t__ fw_lro_aborts; scalar_t__ fw_total_lro; scalar_t__ fw_lro_octs; scalar_t__ fw_lro_pkts; scalar_t__ fw_rx_vxlan_err; scalar_t__ fw_rx_vxlan; scalar_t__ fw_err_drop; scalar_t__ fw_err_link; scalar_t__ fw_err_pko; scalar_t__ frame_err; scalar_t__ l2_err; scalar_t__ jabber_err; scalar_t__ fw_total_bcast; scalar_t__ fw_total_mcast; scalar_t__ fw_total_fwd; scalar_t__ fw_total_rcvd; scalar_t__ red_drops; } ;
struct TYPE_11__ {scalar_t__ runts; scalar_t__ fifo_err; scalar_t__ max_deferral_fail; scalar_t__ max_collision_fail; scalar_t__ multi_collision_sent; scalar_t__ one_collision_sent; scalar_t__ total_collisions; scalar_t__ ctl_sent; scalar_t__ bcast_pkts_sent; scalar_t__ mcast_pkts_sent; scalar_t__ total_bytes_sent; scalar_t__ total_pkts_sent; scalar_t__ fw_total_bcast_sent; scalar_t__ fw_total_mcast_sent; scalar_t__ fw_tx_vxlan; scalar_t__ fw_err_tso; scalar_t__ fw_tso_fwd; scalar_t__ fw_tso; scalar_t__ fw_err_drop; scalar_t__ fw_err_link; scalar_t__ fw_err_pki; scalar_t__ fw_err_pko; scalar_t__ fw_total_fwd; scalar_t__ fw_total_sent; } ;
struct TYPE_13__ {TYPE_3__ fromwire; TYPE_2__ fromhost; } ;
struct octeon_device {TYPE_9__** droq; TYPE_7__ io_qmask; TYPE_6__** instr_queue; TYPE_4__ link_stats; } ;
struct net_device {TYPE_1__* netdev_ops; } ;
struct lio {scalar_t__ link_changes; struct octeon_device* oct_dev; } ;
struct ethtool_stats {int dummy; } ;
struct TYPE_17__ {scalar_t__ rx_alloc_failure; scalar_t__ rx_vxlan; scalar_t__ dropped_nodispatch; scalar_t__ bytes_received; scalar_t__ pkts_received; scalar_t__ rx_dropped; scalar_t__ dropped_toomany; scalar_t__ dropped_nomem; scalar_t__ rx_bytes_received; scalar_t__ rx_pkts_received; } ;
struct TYPE_18__ {TYPE_8__ stats; } ;
struct TYPE_14__ {scalar_t__ tx_restart; scalar_t__ tx_vxlan; scalar_t__ tx_gso; scalar_t__ bytes_sent; scalar_t__ instr_dropped; scalar_t__ instr_processed; scalar_t__ instr_posted; scalar_t__ sgentry_sent; scalar_t__ tx_iq_busy; scalar_t__ tx_dropped; scalar_t__ tx_tot_bytes; scalar_t__ tx_done; } ;
struct TYPE_15__ {TYPE_5__ stats; } ;
struct TYPE_10__ {int (* ndo_get_stats64 ) (struct net_device*,struct rtnl_link_stats64*) ;} ;


 int BIT_ULL (int) ;
 scalar_t__ CVM_CAST64 (scalar_t__) ;
 struct lio* GET_LIO (struct net_device*) ;
 int LIO_IFSTATE_RESETTING ;
 int MAX_OCTEON_INSTR_QUEUES (struct octeon_device*) ;
 int MAX_OCTEON_OUTPUT_QUEUES (struct octeon_device*) ;
 scalar_t__ ifstate_check (struct lio*,int ) ;
 int stub1 (struct net_device*,struct rtnl_link_stats64*) ;

__attribute__((used)) static void
lio_get_ethtool_stats(struct net_device *netdev,
        struct ethtool_stats *stats __attribute__((unused)),
        u64 *data)
{
 struct lio *lio = GET_LIO(netdev);
 struct octeon_device *oct_dev = lio->oct_dev;
 struct rtnl_link_stats64 lstats;
 int i = 0, j;

 if (ifstate_check(lio, LIO_IFSTATE_RESETTING))
  return;

 netdev->netdev_ops->ndo_get_stats64(netdev, &lstats);

 data[i++] = lstats.rx_packets;

 data[i++] = lstats.tx_packets;

 data[i++] = lstats.rx_bytes;

 data[i++] = lstats.tx_bytes;
 data[i++] = lstats.rx_errors +
   oct_dev->link_stats.fromwire.fcs_err +
   oct_dev->link_stats.fromwire.jabber_err +
   oct_dev->link_stats.fromwire.l2_err +
   oct_dev->link_stats.fromwire.frame_err;
 data[i++] = lstats.tx_errors;





 data[i++] = lstats.rx_dropped +
   oct_dev->link_stats.fromwire.fifo_err +
   oct_dev->link_stats.fromwire.dmac_drop +
   oct_dev->link_stats.fromwire.red_drops +
   oct_dev->link_stats.fromwire.fw_err_pko +
   oct_dev->link_stats.fromwire.fw_err_link +
   oct_dev->link_stats.fromwire.fw_err_drop;

 data[i++] = lstats.tx_dropped +
   oct_dev->link_stats.fromhost.max_collision_fail +
   oct_dev->link_stats.fromhost.max_deferral_fail +
   oct_dev->link_stats.fromhost.total_collisions +
   oct_dev->link_stats.fromhost.fw_err_pko +
   oct_dev->link_stats.fromhost.fw_err_link +
   oct_dev->link_stats.fromhost.fw_err_drop +
   oct_dev->link_stats.fromhost.fw_err_pki;





 data[i++] = CVM_CAST64(oct_dev->link_stats.fromhost.fw_total_sent);

 data[i++] = CVM_CAST64(oct_dev->link_stats.fromhost.fw_total_fwd);

 data[i++] = CVM_CAST64(oct_dev->link_stats.fromhost.fw_err_pko);

 data[i++] = CVM_CAST64(oct_dev->link_stats.fromhost.fw_err_pki);

 data[i++] = CVM_CAST64(oct_dev->link_stats.fromhost.fw_err_link);



 data[i++] = CVM_CAST64(oct_dev->link_stats.fromhost.fw_err_drop);


 data[i++] = CVM_CAST64(oct_dev->link_stats.fromhost.fw_tso);



 data[i++] = CVM_CAST64(oct_dev->link_stats.fromhost.fw_tso_fwd);



 data[i++] = CVM_CAST64(oct_dev->link_stats.fromhost.fw_err_tso);



 data[i++] = CVM_CAST64(oct_dev->link_stats.fromhost.fw_tx_vxlan);


 data[i++] = oct_dev->link_stats.fromhost.fw_total_mcast_sent;
 data[i++] = oct_dev->link_stats.fromhost.fw_total_bcast_sent;



 data[i++] = CVM_CAST64(oct_dev->link_stats.fromhost.total_pkts_sent);

 data[i++] = CVM_CAST64(oct_dev->link_stats.fromhost.total_bytes_sent);

 data[i++] = CVM_CAST64(oct_dev->link_stats.fromhost.mcast_pkts_sent);

 data[i++] = CVM_CAST64(oct_dev->link_stats.fromhost.bcast_pkts_sent);

 data[i++] = CVM_CAST64(oct_dev->link_stats.fromhost.ctl_sent);

 data[i++] = CVM_CAST64(oct_dev->link_stats.fromhost.total_collisions);

 data[i++] = CVM_CAST64(oct_dev->link_stats.fromhost.one_collision_sent);

 data[i++] =
  CVM_CAST64(oct_dev->link_stats.fromhost.multi_collision_sent);

 data[i++] = CVM_CAST64(oct_dev->link_stats.fromhost.max_collision_fail);

 data[i++] = CVM_CAST64(oct_dev->link_stats.fromhost.max_deferral_fail);

 data[i++] = CVM_CAST64(oct_dev->link_stats.fromhost.fifo_err);

 data[i++] = CVM_CAST64(oct_dev->link_stats.fromhost.runts);





 data[i++] = CVM_CAST64(oct_dev->link_stats.fromwire.fw_total_rcvd);



 data[i++] = CVM_CAST64(oct_dev->link_stats.fromwire.fw_total_fwd);

 data[i++] = oct_dev->link_stats.fromwire.fw_total_mcast;
 data[i++] = oct_dev->link_stats.fromwire.fw_total_bcast;

 data[i++] = CVM_CAST64(oct_dev->link_stats.fromwire.jabber_err);

 data[i++] = CVM_CAST64(oct_dev->link_stats.fromwire.l2_err);

 data[i++] = CVM_CAST64(oct_dev->link_stats.fromwire.frame_err);



 data[i++] = CVM_CAST64(oct_dev->link_stats.fromwire.fw_err_pko);

 data[i++] = CVM_CAST64(oct_dev->link_stats.fromwire.fw_err_link);



 data[i++] = CVM_CAST64(oct_dev->link_stats.fromwire.fw_err_drop);




 data[i++] = CVM_CAST64(oct_dev->link_stats.fromwire.fw_rx_vxlan);



 data[i++] = CVM_CAST64(oct_dev->link_stats.fromwire.fw_rx_vxlan_err);





 data[i++] = CVM_CAST64(oct_dev->link_stats.fromwire.fw_lro_pkts);



 data[i++] = CVM_CAST64(oct_dev->link_stats.fromwire.fw_lro_octs);

 data[i++] = CVM_CAST64(oct_dev->link_stats.fromwire.fw_total_lro);

 data[i++] = CVM_CAST64(oct_dev->link_stats.fromwire.fw_lro_aborts);



 data[i++] = CVM_CAST64(oct_dev->link_stats.fromwire.fw_lro_aborts_port);



 data[i++] = CVM_CAST64(oct_dev->link_stats.fromwire.fw_lro_aborts_seq);



 data[i++] =
  CVM_CAST64(oct_dev->link_stats.fromwire.fw_lro_aborts_tsval);




 data[i++] =
  CVM_CAST64(oct_dev->link_stats.fromwire.fw_lro_aborts_timer);

 data[i++] = CVM_CAST64(oct_dev->link_stats.fromwire.fwd_rate);



 data[i++] = CVM_CAST64(oct_dev->link_stats.fromwire.total_rcvd);

 data[i++] = CVM_CAST64(oct_dev->link_stats.fromwire.bytes_rcvd);

 data[i++] = CVM_CAST64(oct_dev->link_stats.fromwire.total_bcst);

 data[i++] = CVM_CAST64(oct_dev->link_stats.fromwire.total_mcst);

 data[i++] = CVM_CAST64(oct_dev->link_stats.fromwire.runts);

 data[i++] = CVM_CAST64(oct_dev->link_stats.fromwire.ctl_rcvd);

 data[i++] = CVM_CAST64(oct_dev->link_stats.fromwire.fifo_err);

 data[i++] = CVM_CAST64(oct_dev->link_stats.fromwire.dmac_drop);

 data[i++] = CVM_CAST64(oct_dev->link_stats.fromwire.fcs_err);

 data[i++] = CVM_CAST64(lio->link_changes);

 for (j = 0; j < MAX_OCTEON_INSTR_QUEUES(oct_dev); j++) {
  if (!(oct_dev->io_qmask.iq & BIT_ULL(j)))
   continue;


  data[i++] = CVM_CAST64(oct_dev->instr_queue[j]->stats.tx_done);

  data[i++] =
   CVM_CAST64(oct_dev->instr_queue[j]->stats.tx_tot_bytes);

  data[i++] =
   CVM_CAST64(oct_dev->instr_queue[j]->stats.tx_dropped);

  data[i++] =
   CVM_CAST64(oct_dev->instr_queue[j]->stats.tx_iq_busy);

  data[i++] =
   CVM_CAST64(oct_dev->instr_queue[j]->stats.sgentry_sent);



  data[i++] =
   CVM_CAST64(oct_dev->instr_queue[j]->stats.instr_posted);

  data[i++] = CVM_CAST64(
    oct_dev->instr_queue[j]->stats.instr_processed);

  data[i++] = CVM_CAST64(
    oct_dev->instr_queue[j]->stats.instr_dropped);

  data[i++] =
   CVM_CAST64(oct_dev->instr_queue[j]->stats.bytes_sent);


  data[i++] = CVM_CAST64(oct_dev->instr_queue[j]->stats.tx_gso);

  data[i++] = CVM_CAST64(oct_dev->instr_queue[j]->stats.tx_vxlan);

  data[i++] =
   CVM_CAST64(oct_dev->instr_queue[j]->stats.tx_restart);
 }


 for (j = 0; j < MAX_OCTEON_OUTPUT_QUEUES(oct_dev); j++) {
  if (!(oct_dev->io_qmask.oq & BIT_ULL(j)))
   continue;



  data[i++] =
   CVM_CAST64(oct_dev->droq[j]->stats.rx_pkts_received);

  data[i++] =
   CVM_CAST64(oct_dev->droq[j]->stats.rx_bytes_received);

  data[i++] = CVM_CAST64(oct_dev->droq[j]->stats.dropped_nomem +
           oct_dev->droq[j]->stats.dropped_toomany +
           oct_dev->droq[j]->stats.rx_dropped);
  data[i++] =
   CVM_CAST64(oct_dev->droq[j]->stats.dropped_nomem);
  data[i++] =
   CVM_CAST64(oct_dev->droq[j]->stats.dropped_toomany);
  data[i++] =
   CVM_CAST64(oct_dev->droq[j]->stats.rx_dropped);


  data[i++] =
   CVM_CAST64(oct_dev->droq[j]->stats.pkts_received);
  data[i++] =
   CVM_CAST64(oct_dev->droq[j]->stats.bytes_received);
  data[i++] =
   CVM_CAST64(oct_dev->droq[j]->stats.dropped_nodispatch);

  data[i++] =
   CVM_CAST64(oct_dev->droq[j]->stats.rx_vxlan);
  data[i++] =
   CVM_CAST64(oct_dev->droq[j]->stats.rx_alloc_failure);
 }
}
