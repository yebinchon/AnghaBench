
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_mcp_iscsi_stats {int tx_bytes; int rx_bytes; int tx_pdus; int rx_pdus; } ;
struct qed_iscsi_stats {int iscsi_tx_bytes_cnt; int iscsi_rx_bytes_cnt; int iscsi_tx_total_pdu_cnt; int iscsi_rx_total_pdu_cnt; } ;
struct qed_dev {int dummy; } ;
typedef int proto_stats ;


 int DP_VERBOSE (struct qed_dev*,int ,char*) ;
 int QED_MSG_STORAGE ;
 int memset (struct qed_iscsi_stats*,int ,int) ;
 scalar_t__ qed_iscsi_stats (struct qed_dev*,struct qed_iscsi_stats*) ;

void qed_get_protocol_stats_iscsi(struct qed_dev *cdev,
      struct qed_mcp_iscsi_stats *stats)
{
 struct qed_iscsi_stats proto_stats;


 memset(&proto_stats, 0, sizeof(proto_stats));
 if (qed_iscsi_stats(cdev, &proto_stats)) {
  DP_VERBOSE(cdev, QED_MSG_STORAGE,
      "Failed to collect ISCSI statistics\n");
  return;
 }


 stats->rx_pdus = proto_stats.iscsi_rx_total_pdu_cnt;
 stats->tx_pdus = proto_stats.iscsi_tx_total_pdu_cnt;
 stats->rx_bytes = proto_stats.iscsi_rx_bytes_cnt;
 stats->tx_bytes = proto_stats.iscsi_tx_bytes_cnt;
}
