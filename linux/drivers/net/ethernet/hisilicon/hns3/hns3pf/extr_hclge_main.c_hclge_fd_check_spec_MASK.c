#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_7__ {scalar_t__* rule_num; int proto_support; } ;
struct hclge_dev {TYPE_2__ fd_cfg; TYPE_4__* pdev; } ;
struct ethtool_usrip6_spec {int /*<<< orphan*/  l4_4_bytes; int /*<<< orphan*/  tclass; int /*<<< orphan*/  l4_proto; int /*<<< orphan*/ * ip6dst; int /*<<< orphan*/ * ip6src; } ;
struct ethtool_usrip4_spec {int /*<<< orphan*/  ip_ver; int /*<<< orphan*/  l4_4_bytes; int /*<<< orphan*/  proto; int /*<<< orphan*/  tos; int /*<<< orphan*/  ip4dst; int /*<<< orphan*/  ip4src; } ;
struct ethtool_tcpip6_spec {int /*<<< orphan*/  tclass; int /*<<< orphan*/  pdst; int /*<<< orphan*/  psrc; int /*<<< orphan*/ * ip6dst; int /*<<< orphan*/ * ip6src; } ;
struct ethtool_tcpip4_spec {int /*<<< orphan*/  tos; int /*<<< orphan*/  pdst; int /*<<< orphan*/  psrc; int /*<<< orphan*/  ip4dst; int /*<<< orphan*/  ip4src; } ;
struct TYPE_8__ {scalar_t__* data; int /*<<< orphan*/  h_dest; int /*<<< orphan*/  vlan_tci; scalar_t__ vlan_etype; } ;
struct TYPE_6__ {scalar_t__ vlan_tci; } ;
struct ethhdr {int /*<<< orphan*/  h_proto; int /*<<< orphan*/  h_dest; int /*<<< orphan*/  h_source; } ;
struct TYPE_10__ {struct ethhdr ether_spec; struct ethtool_usrip6_spec usr_ip6_spec; struct ethtool_tcpip6_spec tcp_ip6_spec; struct ethtool_usrip4_spec usr_ip4_spec; struct ethtool_tcpip4_spec tcp_ip4_spec; } ;
struct ethtool_rx_flow_spec {scalar_t__ location; int flow_type; TYPE_3__ h_ext; TYPE_1__ m_ext; TYPE_5__ h_u; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
#define  ETHER_FLOW 136 
 int /*<<< orphan*/  ETH_RX_NFC_IP4 ; 
 int FLOW_EXT ; 
 int FLOW_MAC_EXT ; 
 size_t HCLGE_FD_STAGE_1 ; 
 int /*<<< orphan*/  INNER_DST_IP ; 
 int /*<<< orphan*/  INNER_DST_MAC ; 
 int /*<<< orphan*/  INNER_DST_PORT ; 
 int /*<<< orphan*/  INNER_ETH_TYPE ; 
 int /*<<< orphan*/  INNER_IP_PROTO ; 
 int /*<<< orphan*/  INNER_IP_TOS ; 
 int /*<<< orphan*/  INNER_SRC_IP ; 
 int /*<<< orphan*/  INNER_SRC_MAC ; 
 int /*<<< orphan*/  INNER_SRC_PORT ; 
 int /*<<< orphan*/  INNER_VLAN_TAG_FST ; 
#define  IPV6_USER_FLOW 135 
#define  IP_USER_FLOW 134 
#define  SCTP_V4_FLOW 133 
#define  SCTP_V6_FLOW 132 
#define  TCP_V4_FLOW 131 
#define  TCP_V6_FLOW 130 
#define  UDP_V4_FLOW 129 
#define  UDP_V6_FLOW 128 
 scalar_t__ VLAN_N_VID ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct hclge_dev *hdev,
			       struct ethtool_rx_flow_spec *fs, u32 *unused)
{
	struct ethtool_tcpip4_spec *tcp_ip4_spec;
	struct ethtool_usrip4_spec *usr_ip4_spec;
	struct ethtool_tcpip6_spec *tcp_ip6_spec;
	struct ethtool_usrip6_spec *usr_ip6_spec;
	struct ethhdr *ether_spec;

	if (fs->location >= hdev->fd_cfg.rule_num[HCLGE_FD_STAGE_1])
		return -EINVAL;

	if (!(fs->flow_type & hdev->fd_cfg.proto_support))
		return -EOPNOTSUPP;

	if ((fs->flow_type & FLOW_EXT) &&
	    (fs->h_ext.data[0] != 0 || fs->h_ext.data[1] != 0)) {
		FUNC2(&hdev->pdev->dev, "user-def bytes are not supported\n");
		return -EOPNOTSUPP;
	}

	switch (fs->flow_type & ~(FLOW_EXT | FLOW_MAC_EXT)) {
	case SCTP_V4_FLOW:
	case TCP_V4_FLOW:
	case UDP_V4_FLOW:
		tcp_ip4_spec = &fs->h_u.tcp_ip4_spec;
		*unused |= FUNC0(INNER_SRC_MAC) | FUNC0(INNER_DST_MAC);

		if (!tcp_ip4_spec->ip4src)
			*unused |= FUNC0(INNER_SRC_IP);

		if (!tcp_ip4_spec->ip4dst)
			*unused |= FUNC0(INNER_DST_IP);

		if (!tcp_ip4_spec->psrc)
			*unused |= FUNC0(INNER_SRC_PORT);

		if (!tcp_ip4_spec->pdst)
			*unused |= FUNC0(INNER_DST_PORT);

		if (!tcp_ip4_spec->tos)
			*unused |= FUNC0(INNER_IP_TOS);

		break;
	case IP_USER_FLOW:
		usr_ip4_spec = &fs->h_u.usr_ip4_spec;
		*unused |= FUNC0(INNER_SRC_MAC) | FUNC0(INNER_DST_MAC) |
			FUNC0(INNER_SRC_PORT) | FUNC0(INNER_DST_PORT);

		if (!usr_ip4_spec->ip4src)
			*unused |= FUNC0(INNER_SRC_IP);

		if (!usr_ip4_spec->ip4dst)
			*unused |= FUNC0(INNER_DST_IP);

		if (!usr_ip4_spec->tos)
			*unused |= FUNC0(INNER_IP_TOS);

		if (!usr_ip4_spec->proto)
			*unused |= FUNC0(INNER_IP_PROTO);

		if (usr_ip4_spec->l4_4_bytes)
			return -EOPNOTSUPP;

		if (usr_ip4_spec->ip_ver != ETH_RX_NFC_IP4)
			return -EOPNOTSUPP;

		break;
	case SCTP_V6_FLOW:
	case TCP_V6_FLOW:
	case UDP_V6_FLOW:
		tcp_ip6_spec = &fs->h_u.tcp_ip6_spec;
		*unused |= FUNC0(INNER_SRC_MAC) | FUNC0(INNER_DST_MAC) |
			FUNC0(INNER_IP_TOS);

		/* check whether src/dst ip address used */
		if (!tcp_ip6_spec->ip6src[0] && !tcp_ip6_spec->ip6src[1] &&
		    !tcp_ip6_spec->ip6src[2] && !tcp_ip6_spec->ip6src[3])
			*unused |= FUNC0(INNER_SRC_IP);

		if (!tcp_ip6_spec->ip6dst[0] && !tcp_ip6_spec->ip6dst[1] &&
		    !tcp_ip6_spec->ip6dst[2] && !tcp_ip6_spec->ip6dst[3])
			*unused |= FUNC0(INNER_DST_IP);

		if (!tcp_ip6_spec->psrc)
			*unused |= FUNC0(INNER_SRC_PORT);

		if (!tcp_ip6_spec->pdst)
			*unused |= FUNC0(INNER_DST_PORT);

		if (tcp_ip6_spec->tclass)
			return -EOPNOTSUPP;

		break;
	case IPV6_USER_FLOW:
		usr_ip6_spec = &fs->h_u.usr_ip6_spec;
		*unused |= FUNC0(INNER_SRC_MAC) | FUNC0(INNER_DST_MAC) |
			FUNC0(INNER_IP_TOS) | FUNC0(INNER_SRC_PORT) |
			FUNC0(INNER_DST_PORT);

		/* check whether src/dst ip address used */
		if (!usr_ip6_spec->ip6src[0] && !usr_ip6_spec->ip6src[1] &&
		    !usr_ip6_spec->ip6src[2] && !usr_ip6_spec->ip6src[3])
			*unused |= FUNC0(INNER_SRC_IP);

		if (!usr_ip6_spec->ip6dst[0] && !usr_ip6_spec->ip6dst[1] &&
		    !usr_ip6_spec->ip6dst[2] && !usr_ip6_spec->ip6dst[3])
			*unused |= FUNC0(INNER_DST_IP);

		if (!usr_ip6_spec->l4_proto)
			*unused |= FUNC0(INNER_IP_PROTO);

		if (usr_ip6_spec->tclass)
			return -EOPNOTSUPP;

		if (usr_ip6_spec->l4_4_bytes)
			return -EOPNOTSUPP;

		break;
	case ETHER_FLOW:
		ether_spec = &fs->h_u.ether_spec;
		*unused |= FUNC0(INNER_SRC_IP) | FUNC0(INNER_DST_IP) |
			FUNC0(INNER_SRC_PORT) | FUNC0(INNER_DST_PORT) |
			FUNC0(INNER_IP_TOS) | FUNC0(INNER_IP_PROTO);

		if (FUNC3(ether_spec->h_source))
			*unused |= FUNC0(INNER_SRC_MAC);

		if (FUNC3(ether_spec->h_dest))
			*unused |= FUNC0(INNER_DST_MAC);

		if (!ether_spec->h_proto)
			*unused |= FUNC0(INNER_ETH_TYPE);

		break;
	default:
		return -EOPNOTSUPP;
	}

	if ((fs->flow_type & FLOW_EXT)) {
		if (fs->h_ext.vlan_etype)
			return -EOPNOTSUPP;
		if (!fs->h_ext.vlan_tci)
			*unused |= FUNC0(INNER_VLAN_TAG_FST);

		if (fs->m_ext.vlan_tci) {
			if (FUNC1(fs->h_ext.vlan_tci) >= VLAN_N_VID)
				return -EINVAL;
		}
	} else {
		*unused |= FUNC0(INNER_VLAN_TAG_FST);
	}

	if (fs->flow_type & FLOW_MAC_EXT) {
		if (!(hdev->fd_cfg.proto_support & ETHER_FLOW))
			return -EOPNOTSUPP;

		if (FUNC3(fs->h_ext.h_dest))
			*unused |= FUNC0(INNER_DST_MAC);
		else
			*unused &= ~(FUNC0(INNER_DST_MAC));
	}

	return 0;
}