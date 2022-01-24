#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct ethtool_rxnfc {int cmd; int /*<<< orphan*/  data; int /*<<< orphan*/  rule_cnt; } ;
struct bnxt {int /*<<< orphan*/  ntp_fltr_count; int /*<<< orphan*/  rx_nr_rings; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNXT_NTP_FLTR_MAX_FLTR ; 
 int EOPNOTSUPP ; 
#define  ETHTOOL_GRXCLSRLALL 132 
#define  ETHTOOL_GRXCLSRLCNT 131 
#define  ETHTOOL_GRXCLSRULE 130 
#define  ETHTOOL_GRXFH 129 
#define  ETHTOOL_GRXRINGS 128 
 int FUNC0 (struct bnxt*,struct ethtool_rxnfc*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct bnxt*,struct ethtool_rxnfc*) ; 
 int FUNC2 (struct bnxt*,struct ethtool_rxnfc*) ; 
 struct bnxt* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, struct ethtool_rxnfc *cmd,
			  u32 *rule_locs)
{
	struct bnxt *bp = FUNC3(dev);
	int rc = 0;

	switch (cmd->cmd) {
#ifdef CONFIG_RFS_ACCEL
	case ETHTOOL_GRXRINGS:
		cmd->data = bp->rx_nr_rings;
		break;

	case ETHTOOL_GRXCLSRLCNT:
		cmd->rule_cnt = bp->ntp_fltr_count;
		cmd->data = BNXT_NTP_FLTR_MAX_FLTR;
		break;

	case ETHTOOL_GRXCLSRLALL:
		rc = bnxt_grxclsrlall(bp, cmd, (u32 *)rule_locs);
		break;

	case ETHTOOL_GRXCLSRULE:
		rc = bnxt_grxclsrule(bp, cmd);
		break;
#endif

	case ETHTOOL_GRXFH:
		rc = FUNC2(bp, cmd);
		break;

	default:
		rc = -EOPNOTSUPP;
		break;
	}

	return rc;
}