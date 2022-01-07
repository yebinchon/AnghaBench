
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fcs_err; int ucast_tx_pkts; int ucast_rx_pkts; } ;
union qed_mcp_protocol_stats {int iscsi_stats; int fcoe_stats; TYPE_1__ lan_stats; } ;
struct TYPE_4__ {int tx_ucast_pkts; int rx_ucast_pkts; } ;
struct qed_eth_stats {TYPE_2__ common; } ;
struct qed_dev {int dummy; } ;
typedef enum qed_mcp_protocol_type { ____Placeholder_qed_mcp_protocol_type } qed_mcp_protocol_type ;


 int DP_VERBOSE (struct qed_dev*,int ,char*,int) ;



 int QED_MSG_SP ;
 int memset (union qed_mcp_protocol_stats*,int ,int) ;
 int qed_get_protocol_stats_fcoe (struct qed_dev*,int *) ;
 int qed_get_protocol_stats_iscsi (struct qed_dev*,int *) ;
 int qed_get_vport_stats (struct qed_dev*,struct qed_eth_stats*) ;

void qed_get_protocol_stats(struct qed_dev *cdev,
       enum qed_mcp_protocol_type type,
       union qed_mcp_protocol_stats *stats)
{
 struct qed_eth_stats eth_stats;

 memset(stats, 0, sizeof(*stats));

 switch (type) {
 case 128:
  qed_get_vport_stats(cdev, &eth_stats);
  stats->lan_stats.ucast_rx_pkts =
     eth_stats.common.rx_ucast_pkts;
  stats->lan_stats.ucast_tx_pkts =
     eth_stats.common.tx_ucast_pkts;
  stats->lan_stats.fcs_err = -1;
  break;
 case 130:
  qed_get_protocol_stats_fcoe(cdev, &stats->fcoe_stats);
  break;
 case 129:
  qed_get_protocol_stats_iscsi(cdev, &stats->iscsi_stats);
  break;
 default:
  DP_VERBOSE(cdev, QED_MSG_SP,
      "Invalid protocol type = %d\n", type);
  return;
 }
}
