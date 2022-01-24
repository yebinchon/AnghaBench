#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct qede_dev {int /*<<< orphan*/  arfs; } ;
struct TYPE_8__ {scalar_t__ eth_proto; scalar_t__ ip_proto; int /*<<< orphan*/  dst_ipv6; int /*<<< orphan*/  src_ipv6; int /*<<< orphan*/  dst_port; int /*<<< orphan*/  src_port; int /*<<< orphan*/  dst_ipv4; int /*<<< orphan*/  src_ipv4; } ;
struct qede_arfs_fltr_node {int rxq_id; scalar_t__ b_is_drop; scalar_t__ vfid; TYPE_4__ tuple; } ;
struct in6_addr {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  ip6dst; int /*<<< orphan*/  ip6src; int /*<<< orphan*/  pdst; int /*<<< orphan*/  psrc; } ;
struct TYPE_5__ {int /*<<< orphan*/  ip4dst; int /*<<< orphan*/  ip4src; int /*<<< orphan*/  pdst; int /*<<< orphan*/  psrc; } ;
struct TYPE_7__ {TYPE_2__ tcp_ip6_spec; TYPE_1__ tcp_ip4_spec; } ;
struct ethtool_rx_flow_spec {int ring_cookie; TYPE_3__ h_u; int /*<<< orphan*/  flow_type; int /*<<< orphan*/  location; } ;
struct ethtool_rxnfc {int /*<<< orphan*/  data; struct ethtool_rx_flow_spec fs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qede_dev*,char*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int EPERM ; 
 int ETHTOOL_RX_FLOW_SPEC_RING_VF_OFF ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 scalar_t__ IPPROTO_TCP ; 
 int /*<<< orphan*/  FUNC1 (struct qede_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QEDE_RFS_MAX_FLTR ; 
 int RX_CLS_FLOW_DISC ; 
 int /*<<< orphan*/  TCP_V4_FLOW ; 
 int /*<<< orphan*/  TCP_V6_FLOW ; 
 int /*<<< orphan*/  UDP_V4_FLOW ; 
 int /*<<< orphan*/  UDP_V6_FLOW ; 
 int /*<<< orphan*/  FUNC2 (struct qede_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct qede_dev*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct qede_arfs_fltr_node* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC7(struct qede_dev *edev, struct ethtool_rxnfc *cmd)
{
	struct ethtool_rx_flow_spec *fsp = &cmd->fs;
	struct qede_arfs_fltr_node *fltr = NULL;
	int rc = 0;

	cmd->data = QEDE_RFS_MAX_FLTR;

	FUNC2(edev);

	if (!edev->arfs) {
		rc = -EPERM;
		goto unlock;
	}

	fltr = FUNC6(FUNC1(edev, 0),
					 fsp->location);
	if (!fltr) {
		FUNC0(edev, "Rule not found - location=0x%x\n",
			  fsp->location);
		rc = -EINVAL;
		goto unlock;
	}

	if (fltr->tuple.eth_proto == FUNC4(ETH_P_IP)) {
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
		FUNC5(&fsp->h_u.tcp_ip6_spec.ip6src,
		       &fltr->tuple.src_ipv6, sizeof(struct in6_addr));
		FUNC5(&fsp->h_u.tcp_ip6_spec.ip6dst,
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
	FUNC3(edev);
	return rc;
}