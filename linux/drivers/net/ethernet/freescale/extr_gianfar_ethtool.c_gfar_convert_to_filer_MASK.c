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
typedef  int u32 ;
struct filer_table {int index; TYPE_4__* fe; } ;
struct ethtool_usrip4_spec {int dummy; } ;
struct ethtool_tcpip4_spec {int dummy; } ;
struct TYPE_7__ {struct ethtool_tcpip4_spec udp_ip4_spec; struct ethtool_tcpip4_spec tcp_ip4_spec; } ;
struct TYPE_6__ {struct ethtool_tcpip4_spec udp_ip4_spec; struct ethtool_tcpip4_spec tcp_ip4_spec; } ;
struct TYPE_5__ {scalar_t__ vlan_tci; } ;
struct ethtool_rx_flow_spec {int flow_type; int ring_cookie; TYPE_3__ m_u; TYPE_2__ h_u; TYPE_1__ m_ext; } ;
struct ethhdr {int dummy; } ;
struct TYPE_8__ {int ctrl; int prop; } ;

/* Variables and functions */
 int EBUSY ; 
#define  ETHER_FLOW 132 
 int FLOW_EXT ; 
#define  IP_USER_FLOW 131 
 int MAX_FILER_CACHE_IDX ; 
 int RQFCR_AND ; 
 int RQFCR_CLE ; 
 int /*<<< orphan*/  RQFCR_PID_L4P ; 
 int /*<<< orphan*/  RQFCR_PID_PRI ; 
 int /*<<< orphan*/  RQFCR_PID_VID ; 
 int RQFCR_RJE ; 
 int RQFPR_CFI ; 
 int RQFPR_IPV4 ; 
 int RQFPR_TCP ; 
 int RQFPR_UDP ; 
 int RQFPR_VLN ; 
 int RX_CLS_FLOW_DISC ; 
#define  SCTP_V4_FLOW 130 
#define  TCP_V4_FLOW 129 
#define  UDP_V4_FLOW 128 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ,struct filer_table*) ; 
 int /*<<< orphan*/  FUNC2 (struct ethtool_tcpip4_spec*,struct ethtool_tcpip4_spec*,struct filer_table*) ; 
 int /*<<< orphan*/  FUNC3 (struct ethhdr*,struct ethhdr*,struct filer_table*) ; 
 int /*<<< orphan*/  FUNC4 (int,struct filer_table*) ; 
 int /*<<< orphan*/  FUNC5 (int,int,struct filer_table*) ; 
 int /*<<< orphan*/  FUNC6 (struct ethtool_usrip4_spec*,struct ethtool_usrip4_spec*,struct filer_table*) ; 
 int FUNC7 (struct ethtool_rx_flow_spec*) ; 
 int FUNC8 (struct ethtool_rx_flow_spec*) ; 
 int FUNC9 (struct ethtool_rx_flow_spec*) ; 
 int FUNC10 (struct ethtool_rx_flow_spec*) ; 
 int FUNC11 (struct ethtool_rx_flow_spec*) ; 
 int FUNC12 (struct ethtool_rx_flow_spec*) ; 

__attribute__((used)) static int FUNC13(struct ethtool_rx_flow_spec *rule,
				 struct filer_table *tab)
{
	u32 vlan = 0, vlan_mask = 0;
	u32 id = 0, id_mask = 0;
	u32 cfi = 0, cfi_mask = 0;
	u32 prio = 0, prio_mask = 0;
	u32 old_index = tab->index;

	/* Check if vlan is wanted */
	if ((rule->flow_type & FLOW_EXT) &&
	    (rule->m_ext.vlan_tci != FUNC0(0xFFFF))) {
		if (!rule->m_ext.vlan_tci)
			rule->m_ext.vlan_tci = FUNC0(0xFFFF);

		vlan = RQFPR_VLN;
		vlan_mask = RQFPR_VLN;

		/* Separate the fields */
		id = FUNC11(rule);
		id_mask = FUNC12(rule);
		cfi = FUNC7(rule);
		cfi_mask = FUNC8(rule);
		prio = FUNC9(rule);
		prio_mask = FUNC10(rule);

		if (cfi_mask) {
			if (cfi)
				vlan |= RQFPR_CFI;
			vlan_mask |= RQFPR_CFI;
		}
	}

	switch (rule->flow_type & ~FLOW_EXT) {
	case TCP_V4_FLOW:
		FUNC5(RQFPR_IPV4 | RQFPR_TCP | vlan,
				    RQFPR_IPV4 | RQFPR_TCP | vlan_mask, tab);
		FUNC2(&rule->h_u.tcp_ip4_spec,
				  &rule->m_u.tcp_ip4_spec, tab);
		break;
	case UDP_V4_FLOW:
		FUNC5(RQFPR_IPV4 | RQFPR_UDP | vlan,
				    RQFPR_IPV4 | RQFPR_UDP | vlan_mask, tab);
		FUNC2(&rule->h_u.udp_ip4_spec,
				  &rule->m_u.udp_ip4_spec, tab);
		break;
	case SCTP_V4_FLOW:
		FUNC5(RQFPR_IPV4 | vlan, RQFPR_IPV4 | vlan_mask,
				    tab);
		FUNC1(132, 0, RQFCR_PID_L4P, tab);
		FUNC2((struct ethtool_tcpip4_spec *)&rule->h_u,
				  (struct ethtool_tcpip4_spec *)&rule->m_u,
				  tab);
		break;
	case IP_USER_FLOW:
		FUNC5(RQFPR_IPV4 | vlan, RQFPR_IPV4 | vlan_mask,
				    tab);
		FUNC6((struct ethtool_usrip4_spec *) &rule->h_u,
				 (struct ethtool_usrip4_spec *) &rule->m_u,
				 tab);
		break;
	case ETHER_FLOW:
		if (vlan)
			FUNC5(vlan, vlan_mask, tab);
		FUNC3((struct ethhdr *) &rule->h_u,
			       (struct ethhdr *) &rule->m_u, tab);
		break;
	default:
		return -1;
	}

	/* Set the vlan attributes in the end */
	if (vlan) {
		FUNC1(id, id_mask, RQFCR_PID_VID, tab);
		FUNC1(prio, prio_mask, RQFCR_PID_PRI, tab);
	}

	/* If there has been nothing written till now, it must be a default */
	if (tab->index == old_index) {
		FUNC4(0xFFFFFFFF, tab);
		tab->fe[tab->index].ctrl = 0x20;
		tab->fe[tab->index].prop = 0x0;
		tab->index++;
	}

	/* Remove last AND */
	tab->fe[tab->index - 1].ctrl &= (~RQFCR_AND);

	/* Specify which queue to use or to drop */
	if (rule->ring_cookie == RX_CLS_FLOW_DISC)
		tab->fe[tab->index - 1].ctrl |= RQFCR_RJE;
	else
		tab->fe[tab->index - 1].ctrl |= (rule->ring_cookie << 10);

	/* Only big enough entries can be clustered */
	if (tab->index > (old_index + 2)) {
		tab->fe[old_index + 1].ctrl |= RQFCR_CLE;
		tab->fe[tab->index - 1].ctrl |= RQFCR_CLE;
	}

	/* In rare cases the cache can be full while there is
	 * free space in hw
	 */
	if (tab->index > MAX_FILER_CACHE_IDX - 1)
		return -EBUSY;

	return 0;
}