
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qed_mcp_fcoe_stats {int login_failure; int fcs_err; scalar_t__ tx_pkts; scalar_t__ rx_pkts; } ;
struct qed_fcoe_stats {int fcoe_silent_drop_pkt_crc_error_cnt; scalar_t__ fcoe_tx_other_pkt_cnt; scalar_t__ fcoe_tx_xfer_pkt_cnt; scalar_t__ fcoe_tx_data_pkt_cnt; scalar_t__ fcoe_rx_other_pkt_cnt; scalar_t__ fcoe_rx_xfer_pkt_cnt; scalar_t__ fcoe_rx_data_pkt_cnt; } ;
struct qed_fcoe_cb_ops {int (* get_login_failures ) (void*) ;} ;
struct TYPE_2__ {struct qed_fcoe_cb_ops* fcoe; } ;
struct qed_dev {void* ops_cookie; TYPE_1__ protocol_ops; } ;
typedef int proto_stats ;


 int DP_VERBOSE (struct qed_dev*,int ,char*) ;
 int QED_MSG_STORAGE ;
 int memset (struct qed_fcoe_stats*,int ,int) ;
 scalar_t__ qed_fcoe_stats (struct qed_dev*,struct qed_fcoe_stats*) ;
 int stub1 (void*) ;

void qed_get_protocol_stats_fcoe(struct qed_dev *cdev,
     struct qed_mcp_fcoe_stats *stats)
{
 struct qed_fcoe_stats proto_stats;


 memset(&proto_stats, 0, sizeof(proto_stats));
 if (qed_fcoe_stats(cdev, &proto_stats)) {
  DP_VERBOSE(cdev, QED_MSG_STORAGE,
      "Failed to collect FCoE statistics\n");
  return;
 }


 stats->rx_pkts = proto_stats.fcoe_rx_data_pkt_cnt +
    proto_stats.fcoe_rx_xfer_pkt_cnt +
    proto_stats.fcoe_rx_other_pkt_cnt;
 stats->tx_pkts = proto_stats.fcoe_tx_data_pkt_cnt +
    proto_stats.fcoe_tx_xfer_pkt_cnt +
    proto_stats.fcoe_tx_other_pkt_cnt;
 stats->fcs_err = proto_stats.fcoe_silent_drop_pkt_crc_error_cnt;


 if (cdev->protocol_ops.fcoe && cdev->ops_cookie) {
  struct qed_fcoe_cb_ops *ops = cdev->protocol_ops.fcoe;
  void *cookie = cdev->ops_cookie;

  if (ops->get_login_failures)
   stats->login_failure = ops->get_login_failures(cookie);
 }
}
