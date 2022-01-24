#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int flow_type; } ;
struct ethtool_rxnfc {int cmd; int data; int flow_type; int rule_cnt; int /*<<< orphan*/  rss_context; TYPE_1__ fs; } ;
struct efx_rss_context {int /*<<< orphan*/  rx_hash_udp_4tuple; } ;
struct efx_nic {int n_rx_channels; int /*<<< orphan*/  rss_lock; struct efx_rss_context rss_context; } ;
typedef  int s32 ;

/* Variables and functions */
#define  AH_ESP_V4_FLOW 142 
#define  AH_ESP_V6_FLOW 141 
 int /*<<< orphan*/  EFX_FILTER_PRI_MANUAL ; 
 int ENOENT ; 
 int EOPNOTSUPP ; 
#define  ETHTOOL_GRXCLSRLALL 140 
#define  ETHTOOL_GRXCLSRLCNT 139 
#define  ETHTOOL_GRXCLSRULE 138 
#define  ETHTOOL_GRXFH 137 
#define  ETHTOOL_GRXRINGS 136 
 int FLOW_RSS ; 
#define  IPV4_FLOW 135 
#define  IPV6_FLOW 134 
 int RXH_IP_DST ; 
 int RXH_IP_SRC ; 
 int RXH_L4_B_0_1 ; 
 int RXH_L4_B_2_3 ; 
 int RX_CLS_LOC_SPECIAL ; 
#define  SCTP_V4_FLOW 133 
#define  SCTP_V6_FLOW 132 
#define  TCP_V4_FLOW 131 
#define  TCP_V6_FLOW 130 
#define  UDP_V4_FLOW 129 
#define  UDP_V6_FLOW 128 
 int FUNC0 (struct efx_nic*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct efx_nic*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct efx_nic*) ; 
 int FUNC3 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct efx_rss_context* FUNC4 (struct efx_nic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct efx_rss_context*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct efx_nic* FUNC8 (struct net_device*) ; 

__attribute__((used)) static int
FUNC9(struct net_device *net_dev,
		      struct ethtool_rxnfc *info, u32 *rule_locs)
{
	struct efx_nic *efx = FUNC8(net_dev);
	u32 rss_context = 0;
	s32 rc = 0;

	switch (info->cmd) {
	case ETHTOOL_GRXRINGS:
		info->data = efx->n_rx_channels;
		return 0;

	case ETHTOOL_GRXFH: {
		struct efx_rss_context *ctx = &efx->rss_context;

		FUNC6(&efx->rss_lock);
		if (info->flow_type & FLOW_RSS && info->rss_context) {
			ctx = FUNC4(efx, info->rss_context);
			if (!ctx) {
				rc = -ENOENT;
				goto out_unlock;
			}
		}
		info->data = 0;
		if (!FUNC5(ctx)) /* No RSS */
			goto out_unlock;
		switch (info->flow_type & ~FLOW_RSS) {
		case UDP_V4_FLOW:
			if (ctx->rx_hash_udp_4tuple)
				/* fall through */
		case TCP_V4_FLOW:
				info->data |= RXH_L4_B_0_1 | RXH_L4_B_2_3;
			/* fall through */
		case SCTP_V4_FLOW:
		case AH_ESP_V4_FLOW:
		case IPV4_FLOW:
			info->data |= RXH_IP_SRC | RXH_IP_DST;
			break;
		case UDP_V6_FLOW:
			if (ctx->rx_hash_udp_4tuple)
				/* fall through */
		case TCP_V6_FLOW:
				info->data |= RXH_L4_B_0_1 | RXH_L4_B_2_3;
			/* fall through */
		case SCTP_V6_FLOW:
		case AH_ESP_V6_FLOW:
		case IPV6_FLOW:
			info->data |= RXH_IP_SRC | RXH_IP_DST;
			break;
		default:
			break;
		}
out_unlock:
		FUNC7(&efx->rss_lock);
		return rc;
	}

	case ETHTOOL_GRXCLSRLCNT:
		info->data = FUNC2(efx);
		if (info->data == 0)
			return -EOPNOTSUPP;
		info->data |= RX_CLS_LOC_SPECIAL;
		info->rule_cnt =
			FUNC1(efx, EFX_FILTER_PRI_MANUAL);
		return 0;

	case ETHTOOL_GRXCLSRULE:
		if (FUNC2(efx) == 0)
			return -EOPNOTSUPP;
		rc = FUNC0(efx, &info->fs, &rss_context);
		if (rc < 0)
			return rc;
		if (info->fs.flow_type & FLOW_RSS)
			info->rss_context = rss_context;
		return 0;

	case ETHTOOL_GRXCLSRLALL:
		info->data = FUNC2(efx);
		if (info->data == 0)
			return -EOPNOTSUPP;
		rc = FUNC3(efx, EFX_FILTER_PRI_MANUAL,
					   rule_locs, info->rule_cnt);
		if (rc < 0)
			return rc;
		info->rule_cnt = rc;
		return 0;

	default:
		return -EOPNOTSUPP;
	}
}