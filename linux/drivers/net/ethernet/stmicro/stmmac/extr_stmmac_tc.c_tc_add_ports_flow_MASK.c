#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct stmmac_priv {int /*<<< orphan*/  hw; } ;
struct stmmac_flow_entry {int action; int ip_proto; int is_l4; int /*<<< orphan*/  idx; } ;
struct TYPE_4__ {struct flow_dissector* dissector; } ;
struct flow_rule {TYPE_1__ match; } ;
struct flow_match_ports {TYPE_3__* mask; TYPE_2__* key; } ;
struct flow_dissector {int dummy; } ;
struct flow_cls_offload {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct TYPE_5__ {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FLOW_DISSECTOR_KEY_PORTS ; 
#define  IPPROTO_TCP 129 
#define  IPPROTO_UDP 128 
 int STMMAC_FLOW_ACTION_DROP ; 
 int /*<<< orphan*/  FUNC0 (struct flow_dissector*,int /*<<< orphan*/ ) ; 
 struct flow_rule* FUNC1 (struct flow_cls_offload*) ; 
 int /*<<< orphan*/  FUNC2 (struct flow_rule*,struct flow_match_ports*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct stmmac_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int) ; 

__attribute__((used)) static int FUNC5(struct stmmac_priv *priv,
			     struct flow_cls_offload *cls,
			     struct stmmac_flow_entry *entry)
{
	struct flow_rule *rule = FUNC1(cls);
	struct flow_dissector *dissector = rule->match.dissector;
	bool inv = entry->action & STMMAC_FLOW_ACTION_DROP;
	struct flow_match_ports match;
	u32 hw_match;
	bool is_udp;
	int ret;

	/* Nothing to do here */
	if (!FUNC0(dissector, FLOW_DISSECTOR_KEY_PORTS))
		return -EINVAL;

	switch (entry->ip_proto) {
	case IPPROTO_TCP:
		is_udp = false;
		break;
	case IPPROTO_UDP:
		is_udp = true;
		break;
	default:
		return -EINVAL;
	}

	FUNC2(rule, &match);

	hw_match = FUNC3(match.key->src) & FUNC3(match.mask->src);
	if (hw_match) {
		ret = FUNC4(priv, priv->hw, entry->idx, true,
					      is_udp, true, inv, hw_match);
		if (ret)
			return ret;
	}

	hw_match = FUNC3(match.key->dst) & FUNC3(match.mask->dst);
	if (hw_match) {
		ret = FUNC4(priv, priv->hw, entry->idx, true,
					      is_udp, false, inv, hw_match);
		if (ret)
			return ret;
	}

	entry->is_l4 = true;
	return 0;
}