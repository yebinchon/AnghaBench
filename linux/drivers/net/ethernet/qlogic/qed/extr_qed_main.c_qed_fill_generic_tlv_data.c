
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ipv4_csum_offload; int lso_supported; int b_set; } ;
struct qed_mfw_tlv_generic {int* mac_set; int rx_frames_set; int rx_bytes_set; int tx_frames_set; scalar_t__ tx_bytes; scalar_t__ tx_frames; scalar_t__ rx_bytes; scalar_t__ rx_frames; int * mac; TYPE_2__ flags; } ;
struct qed_generic_tlvs {int feat_flags; int * mac; } ;
struct qed_eth_stats_common {scalar_t__ tx_bcast_bytes; scalar_t__ tx_mcast_bytes; scalar_t__ tx_ucast_bytes; scalar_t__ tx_bcast_pkts; scalar_t__ tx_mcast_pkts; scalar_t__ tx_ucast_pkts; scalar_t__ rx_bcast_bytes; scalar_t__ rx_mcast_bytes; scalar_t__ rx_ucast_bytes; scalar_t__ rx_bcast_pkts; scalar_t__ rx_mcast_pkts; scalar_t__ rx_ucast_pkts; } ;
struct qed_eth_stats {struct qed_eth_stats_common common; } ;
struct TYPE_3__ {struct qed_common_cb_ops* common; } ;
struct qed_dev {int ops_cookie; TYPE_1__ protocol_ops; } ;
struct qed_common_cb_ops {int (* get_generic_tlv_data ) (int ,struct qed_generic_tlvs*) ;} ;
typedef int gen_tlvs ;


 int QED_TLV_IP_CSUM ;
 int QED_TLV_LSO ;
 int QED_TLV_MAC_COUNT ;
 int ether_addr_copy (int ,int ) ;
 scalar_t__ is_valid_ether_addr (int ) ;
 int memset (struct qed_generic_tlvs*,int ,int) ;
 int qed_get_vport_stats (struct qed_dev*,struct qed_eth_stats*) ;
 int stub1 (int ,struct qed_generic_tlvs*) ;

__attribute__((used)) static void
qed_fill_generic_tlv_data(struct qed_dev *cdev, struct qed_mfw_tlv_generic *tlv)
{
 struct qed_common_cb_ops *op = cdev->protocol_ops.common;
 struct qed_eth_stats_common *p_common;
 struct qed_generic_tlvs gen_tlvs;
 struct qed_eth_stats stats;
 int i;

 memset(&gen_tlvs, 0, sizeof(gen_tlvs));
 op->get_generic_tlv_data(cdev->ops_cookie, &gen_tlvs);

 if (gen_tlvs.feat_flags & QED_TLV_IP_CSUM)
  tlv->flags.ipv4_csum_offload = 1;
 if (gen_tlvs.feat_flags & QED_TLV_LSO)
  tlv->flags.lso_supported = 1;
 tlv->flags.b_set = 1;

 for (i = 0; i < QED_TLV_MAC_COUNT; i++) {
  if (is_valid_ether_addr(gen_tlvs.mac[i])) {
   ether_addr_copy(tlv->mac[i], gen_tlvs.mac[i]);
   tlv->mac_set[i] = 1;
  }
 }

 qed_get_vport_stats(cdev, &stats);
 p_common = &stats.common;
 tlv->rx_frames = p_common->rx_ucast_pkts + p_common->rx_mcast_pkts +
    p_common->rx_bcast_pkts;
 tlv->rx_frames_set = 1;
 tlv->rx_bytes = p_common->rx_ucast_bytes + p_common->rx_mcast_bytes +
   p_common->rx_bcast_bytes;
 tlv->rx_bytes_set = 1;
 tlv->tx_frames = p_common->tx_ucast_pkts + p_common->tx_mcast_pkts +
    p_common->tx_bcast_pkts;
 tlv->tx_frames_set = 1;
 tlv->tx_bytes = p_common->tx_ucast_bytes + p_common->tx_mcast_bytes +
   p_common->tx_bcast_bytes;
 tlv->rx_bytes_set = 1;
}
