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
struct mvpp2_rfs_rule {int c2_tcam; int c2_tcam_mask; int /*<<< orphan*/  hek_fields; struct flow_rule* flow; } ;
struct flow_rule {int dummy; } ;
struct flow_match_vlan {TYPE_2__* mask; TYPE_1__* key; } ;
struct flow_match_ports {TYPE_4__* mask; TYPE_3__* key; } ;
struct TYPE_8__ {scalar_t__ dst; scalar_t__ src; } ;
struct TYPE_7__ {scalar_t__ dst; scalar_t__ src; } ;
struct TYPE_6__ {scalar_t__ vlan_dei; scalar_t__ vlan_priority; scalar_t__ vlan_id; } ;
struct TYPE_5__ {scalar_t__ vlan_priority; scalar_t__ vlan_id; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FLOW_DISSECTOR_KEY_PORTS ; 
 int /*<<< orphan*/  FLOW_DISSECTOR_KEY_VLAN ; 
 int /*<<< orphan*/  MVPP22_CLS_HEK_OPT_L4DIP ; 
 int /*<<< orphan*/  MVPP22_CLS_HEK_OPT_L4SIP ; 
 int /*<<< orphan*/  MVPP22_CLS_HEK_OPT_VLAN ; 
 int /*<<< orphan*/  MVPP22_CLS_HEK_OPT_VLAN_PRI ; 
 scalar_t__ MVPP2_FLOW_N_FIELDS ; 
 scalar_t__ FUNC0 (struct flow_rule*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct flow_rule*,struct flow_match_ports*) ; 
 int /*<<< orphan*/  FUNC2 (struct flow_rule*,struct flow_match_vlan*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct mvpp2_rfs_rule *rule)
{
	struct flow_rule *flow = rule->flow;
	int offs = 0;

	/* The order of insertion in C2 tcam must match the order in which
	 * the fields are found in the header
	 */
	if (FUNC0(flow, FLOW_DISSECTOR_KEY_VLAN)) {
		struct flow_match_vlan match;

		FUNC2(flow, &match);
		if (match.mask->vlan_id) {
			rule->hek_fields |= MVPP22_CLS_HEK_OPT_VLAN;

			rule->c2_tcam |= ((u64)match.key->vlan_id) << offs;
			rule->c2_tcam_mask |= ((u64)match.mask->vlan_id) << offs;

			/* Don't update the offset yet */
		}

		if (match.mask->vlan_priority) {
			rule->hek_fields |= MVPP22_CLS_HEK_OPT_VLAN_PRI;

			/* VLAN pri is always at offset 13 relative to the
			 * current offset
			 */
			rule->c2_tcam |= ((u64)match.key->vlan_priority) <<
				(offs + 13);
			rule->c2_tcam_mask |= ((u64)match.mask->vlan_priority) <<
				(offs + 13);
		}

		if (match.mask->vlan_dei)
			return -EOPNOTSUPP;

		/* vlan id and prio always seem to take a full 16-bit slot in
		 * the Header Extracted Key.
		 */
		offs += 16;
	}

	if (FUNC0(flow, FLOW_DISSECTOR_KEY_PORTS)) {
		struct flow_match_ports match;

		FUNC1(flow, &match);
		if (match.mask->src) {
			rule->hek_fields |= MVPP22_CLS_HEK_OPT_L4SIP;

			rule->c2_tcam |= ((u64)FUNC5(match.key->src)) << offs;
			rule->c2_tcam_mask |= ((u64)FUNC5(match.mask->src)) << offs;
			offs += FUNC4(MVPP22_CLS_HEK_OPT_L4SIP);
		}

		if (match.mask->dst) {
			rule->hek_fields |= MVPP22_CLS_HEK_OPT_L4DIP;

			rule->c2_tcam |= ((u64)FUNC5(match.key->dst)) << offs;
			rule->c2_tcam_mask |= ((u64)FUNC5(match.mask->dst)) << offs;
			offs += FUNC4(MVPP22_CLS_HEK_OPT_L4DIP);
		}
	}

	if (FUNC3(rule->hek_fields) > MVPP2_FLOW_N_FIELDS)
		return -EOPNOTSUPP;

	return 0;
}