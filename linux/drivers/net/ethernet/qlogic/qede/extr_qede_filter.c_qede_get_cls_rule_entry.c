
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct qede_dev {int arfs; } ;
struct TYPE_8__ {scalar_t__ eth_proto; scalar_t__ ip_proto; int dst_ipv6; int src_ipv6; int dst_port; int src_port; int dst_ipv4; int src_ipv4; } ;
struct qede_arfs_fltr_node {int rxq_id; scalar_t__ b_is_drop; scalar_t__ vfid; TYPE_4__ tuple; } ;
struct in6_addr {int dummy; } ;
struct TYPE_6__ {int ip6dst; int ip6src; int pdst; int psrc; } ;
struct TYPE_5__ {int ip4dst; int ip4src; int pdst; int psrc; } ;
struct TYPE_7__ {TYPE_2__ tcp_ip6_spec; TYPE_1__ tcp_ip4_spec; } ;
struct ethtool_rx_flow_spec {int ring_cookie; TYPE_3__ h_u; int flow_type; int location; } ;
struct ethtool_rxnfc {int data; struct ethtool_rx_flow_spec fs; } ;


 int DP_NOTICE (struct qede_dev*,char*,int ) ;
 int EINVAL ;
 int EPERM ;
 int ETHTOOL_RX_FLOW_SPEC_RING_VF_OFF ;
 int ETH_P_IP ;
 scalar_t__ IPPROTO_TCP ;
 int QEDE_ARFS_BUCKET_HEAD (struct qede_dev*,int ) ;
 int QEDE_RFS_MAX_FLTR ;
 int RX_CLS_FLOW_DISC ;
 int TCP_V4_FLOW ;
 int TCP_V6_FLOW ;
 int UDP_V4_FLOW ;
 int UDP_V6_FLOW ;
 int __qede_lock (struct qede_dev*) ;
 int __qede_unlock (struct qede_dev*) ;
 scalar_t__ htons (int ) ;
 int memcpy (int *,int *,int) ;
 struct qede_arfs_fltr_node* qede_get_arfs_fltr_by_loc (int ,int ) ;

int qede_get_cls_rule_entry(struct qede_dev *edev, struct ethtool_rxnfc *cmd)
{
 struct ethtool_rx_flow_spec *fsp = &cmd->fs;
 struct qede_arfs_fltr_node *fltr = ((void*)0);
 int rc = 0;

 cmd->data = QEDE_RFS_MAX_FLTR;

 __qede_lock(edev);

 if (!edev->arfs) {
  rc = -EPERM;
  goto unlock;
 }

 fltr = qede_get_arfs_fltr_by_loc(QEDE_ARFS_BUCKET_HEAD(edev, 0),
      fsp->location);
 if (!fltr) {
  DP_NOTICE(edev, "Rule not found - location=0x%x\n",
     fsp->location);
  rc = -EINVAL;
  goto unlock;
 }

 if (fltr->tuple.eth_proto == htons(ETH_P_IP)) {
  if (fltr->tuple.ip_proto == IPPROTO_TCP)
   fsp->flow_type = TCP_V4_FLOW;
  else
   fsp->flow_type = UDP_V4_FLOW;

  fsp->h_u.tcp_ip4_spec.psrc = fltr->tuple.src_port;
  fsp->h_u.tcp_ip4_spec.pdst = fltr->tuple.dst_port;
  fsp->h_u.tcp_ip4_spec.ip4src = fltr->tuple.src_ipv4;
  fsp->h_u.tcp_ip4_spec.ip4dst = fltr->tuple.dst_ipv4;
 } else {
  if (fltr->tuple.ip_proto == IPPROTO_TCP)
   fsp->flow_type = TCP_V6_FLOW;
  else
   fsp->flow_type = UDP_V6_FLOW;
  fsp->h_u.tcp_ip6_spec.psrc = fltr->tuple.src_port;
  fsp->h_u.tcp_ip6_spec.pdst = fltr->tuple.dst_port;
  memcpy(&fsp->h_u.tcp_ip6_spec.ip6src,
         &fltr->tuple.src_ipv6, sizeof(struct in6_addr));
  memcpy(&fsp->h_u.tcp_ip6_spec.ip6dst,
         &fltr->tuple.dst_ipv6, sizeof(struct in6_addr));
 }

 fsp->ring_cookie = fltr->rxq_id;

 if (fltr->vfid) {
  fsp->ring_cookie |= ((u64)fltr->vfid) <<
     ETHTOOL_RX_FLOW_SPEC_RING_VF_OFF;
 }

 if (fltr->b_is_drop)
  fsp->ring_cookie = RX_CLS_FLOW_DISC;
unlock:
 __qede_unlock(edev);
 return rc;
}
