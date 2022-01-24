#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mvpp2_port {int /*<<< orphan*/  n_rfs_rules; struct mvpp2_ethtool_fs** rfs_rules; } ;
struct TYPE_6__ {int flow_type; scalar_t__ loc; int /*<<< orphan*/ * flow; } ;
struct mvpp2_ethtool_fs {TYPE_2__ rule; int /*<<< orphan*/  rxnfc; } ;
struct TYPE_5__ {scalar_t__ location; int flow_type; } ;
struct ethtool_rxnfc {TYPE_1__ fs; int /*<<< orphan*/  rss_context; } ;
struct ethtool_rx_flow_spec_input {int /*<<< orphan*/  rss_ctx; TYPE_1__* fs; } ;
struct ethtool_rx_flow_rule {int /*<<< orphan*/ * rule; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int FLOW_RSS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct ethtool_rx_flow_rule*) ; 
 scalar_t__ MVPP2_N_RFS_ENTRIES_PER_FLOW ; 
 int FUNC1 (struct ethtool_rx_flow_rule*) ; 
 struct ethtool_rx_flow_rule* FUNC2 (struct ethtool_rx_flow_spec_input*) ; 
 int /*<<< orphan*/  FUNC3 (struct ethtool_rx_flow_rule*) ; 
 int /*<<< orphan*/  FUNC4 (struct mvpp2_ethtool_fs*) ; 
 struct mvpp2_ethtool_fs* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct ethtool_rxnfc*,int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (TYPE_2__*) ; 
 int FUNC9 (struct mvpp2_port*,TYPE_2__*) ; 
 int FUNC10 (struct mvpp2_port*,TYPE_2__*) ; 

int FUNC11(struct mvpp2_port *port,
			       struct ethtool_rxnfc *info)
{
	struct ethtool_rx_flow_spec_input input = {};
	struct ethtool_rx_flow_rule *ethtool_rule;
	struct mvpp2_ethtool_fs *efs, *old_efs;
	int ret = 0;

	if (info->fs.location >= MVPP2_N_RFS_ENTRIES_PER_FLOW)
		return -EINVAL;

	efs = FUNC5(sizeof(*efs), GFP_KERNEL);
	if (!efs)
		return -ENOMEM;

	input.fs = &info->fs;

	/* We need to manually set the rss_ctx, since this info isn't present
	 * in info->fs
	 */
	if (info->fs.flow_type & FLOW_RSS)
		input.rss_ctx = info->rss_context;

	ethtool_rule = FUNC2(&input);
	if (FUNC0(ethtool_rule)) {
		ret = FUNC1(ethtool_rule);
		goto clean_rule;
	}

	efs->rule.flow = ethtool_rule->rule;
	efs->rule.flow_type = FUNC7(info->fs.flow_type);
	if (efs->rule.flow_type < 0) {
		ret = efs->rule.flow_type;
		goto clean_rule;
	}

	ret = FUNC8(&efs->rule);
	if (ret)
		goto clean_eth_rule;

	efs->rule.loc = info->fs.location;

	/* Replace an already existing rule */
	if (port->rfs_rules[efs->rule.loc]) {
		old_efs = port->rfs_rules[efs->rule.loc];
		ret = FUNC9(port, &old_efs->rule);
		if (ret)
			goto clean_eth_rule;
		FUNC4(old_efs);
		port->n_rfs_rules--;
	}

	ret = FUNC10(port, &efs->rule);
	if (ret)
		goto clean_eth_rule;

	FUNC3(ethtool_rule);
	efs->rule.flow = NULL;

	FUNC6(&efs->rxnfc, info, sizeof(*info));
	port->rfs_rules[efs->rule.loc] = efs;
	port->n_rfs_rules++;

	return ret;

clean_eth_rule:
	FUNC3(ethtool_rule);
clean_rule:
	FUNC4(efs);
	return ret;
}