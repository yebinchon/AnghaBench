
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qede_dev {int dummy; } ;
struct qede_arfs_fltr_node {int b_is_drop; scalar_t__ vfid; int rxq_id; int next_rxq_id; } ;
struct ethtool_rx_flow_spec {scalar_t__ ring_cookie; } ;


 int DP_VERBOSE (struct qede_dev*,int ,char*,scalar_t__) ;
 int QED_MSG_SP ;
 scalar_t__ RX_CLS_FLOW_DISC ;
 int ethtool_get_flow_spec_ring (scalar_t__) ;
 scalar_t__ ethtool_get_flow_spec_ring_vf (scalar_t__) ;

__attribute__((used)) static void qede_flow_set_destination(struct qede_dev *edev,
          struct qede_arfs_fltr_node *n,
          struct ethtool_rx_flow_spec *fs)
{
 if (fs->ring_cookie == RX_CLS_FLOW_DISC) {
  n->b_is_drop = 1;
  return;
 }

 n->vfid = ethtool_get_flow_spec_ring_vf(fs->ring_cookie);
 n->rxq_id = ethtool_get_flow_spec_ring(fs->ring_cookie);
 n->next_rxq_id = n->rxq_id;

 if (n->vfid)
  DP_VERBOSE(edev, QED_MSG_SP,
      "Configuring N-tuple for VF 0x%02x\n", n->vfid - 1);
}
