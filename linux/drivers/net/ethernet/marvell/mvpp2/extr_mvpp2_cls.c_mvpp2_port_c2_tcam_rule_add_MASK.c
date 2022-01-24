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
typedef  int u8 ;
struct mvpp2_rfs_rule {int c2_index; int c2_tcam; int c2_tcam_mask; int /*<<< orphan*/  loc; TYPE_2__* flow; } ;
struct mvpp2_port {int first_rxq; int /*<<< orphan*/  priv; int /*<<< orphan*/  id; } ;
struct mvpp2_cls_c2_entry {int index; int* tcam; int act; int* attr; int valid; } ;
struct TYPE_6__ {int index; scalar_t__ ctx; } ;
struct flow_action_entry {scalar_t__ id; TYPE_3__ queue; } ;
typedef  int /*<<< orphan*/  c2 ;
struct TYPE_4__ {struct flow_action_entry* entries; } ;
struct TYPE_5__ {TYPE_1__ action; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 scalar_t__ FLOW_ACTION_DROP ; 
 int /*<<< orphan*/  MVPP22_C2_COL_NO_UPD_LOCK ; 
 int /*<<< orphan*/  MVPP22_C2_COL_RED_LOCK ; 
 int /*<<< orphan*/  MVPP22_C2_FWD_SW_LOCK ; 
 int /*<<< orphan*/  MVPP22_C2_UPD_LOCK ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int) ; 
 int MVPP22_CLS_C2_ATTR0_QHIGH_MASK ; 
 int FUNC7 (int) ; 
 int MVPP22_CLS_C2_ATTR0_QLOW_MASK ; 
 int MVPP22_CLS_C2_ATTR2_RSS_EN ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int) ; 
 int FUNC10 (int) ; 
 int /*<<< orphan*/  MVPP2_CLS_LU_TYPE_MASK ; 
 int /*<<< orphan*/  FUNC11 (struct mvpp2_cls_c2_entry*,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (struct mvpp2_port*,scalar_t__) ; 
 int FUNC13 (struct mvpp2_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct mvpp2_cls_c2_entry*) ; 

__attribute__((used)) static int FUNC15(struct mvpp2_port *port,
				       struct mvpp2_rfs_rule *rule)
{
	struct flow_action_entry *act;
	struct mvpp2_cls_c2_entry c2;
	u8 qh, ql, pmap;
	int index, ctx;

	FUNC11(&c2, 0, sizeof(c2));

	index = FUNC13(port, rule->loc);
	if (index < 0)
		return -EINVAL;
	c2.index = index;

	act = &rule->flow->action.entries[0];

	rule->c2_index = c2.index;

	c2.tcam[3] = (rule->c2_tcam & 0xffff) |
		     ((rule->c2_tcam_mask & 0xffff) << 16);
	c2.tcam[2] = ((rule->c2_tcam >> 16) & 0xffff) |
		     (((rule->c2_tcam_mask >> 16) & 0xffff) << 16);
	c2.tcam[1] = ((rule->c2_tcam >> 32) & 0xffff) |
		     (((rule->c2_tcam_mask >> 32) & 0xffff) << 16);
	c2.tcam[0] = ((rule->c2_tcam >> 48) & 0xffff) |
		     (((rule->c2_tcam_mask >> 48) & 0xffff) << 16);

	pmap = FUNC0(port->id);
	c2.tcam[4] = FUNC9(pmap);
	c2.tcam[4] |= FUNC10(FUNC9(pmap));

	/* Match on Lookup Type */
	c2.tcam[4] |= FUNC10(FUNC8(MVPP2_CLS_LU_TYPE_MASK));
	c2.tcam[4] |= FUNC8(rule->loc);

	if (act->id == FLOW_ACTION_DROP) {
		c2.act = FUNC1(MVPP22_C2_COL_RED_LOCK);
	} else {
		/* We want to keep the default color derived from the Header
		 * Parser drop entries, for VLAN and MAC filtering. This will
		 * assign a default color of Green or Red, and we want matches
		 * with a non-drop action to keep that color.
		 */
		c2.act = FUNC1(MVPP22_C2_COL_NO_UPD_LOCK);

		/* Update RSS status after matching this entry */
		if (act->queue.ctx)
			c2.attr[2] |= MVPP22_CLS_C2_ATTR2_RSS_EN;

		/* Always lock the RSS_EN decision. We might have high prio
		 * rules steering to an RXQ, and a lower one steering to RSS,
		 * we don't want the low prio RSS rule overwriting this flag.
		 */
		c2.act = FUNC5(MVPP22_C2_UPD_LOCK);

		/* Mark packet as "forwarded to software", needed for RSS */
		c2.act |= FUNC2(MVPP22_C2_FWD_SW_LOCK);

		c2.act |= FUNC3(MVPP22_C2_UPD_LOCK) |
			   FUNC4(MVPP22_C2_UPD_LOCK);

		if (act->queue.ctx) {
			/* Get the global ctx number */
			ctx = FUNC12(port, act->queue.ctx);
			if (ctx < 0)
				return -EINVAL;

			qh = (ctx >> 3) & MVPP22_CLS_C2_ATTR0_QHIGH_MASK;
			ql = ctx & MVPP22_CLS_C2_ATTR0_QLOW_MASK;
		} else {
			qh = ((act->queue.index + port->first_rxq) >> 3) &
			      MVPP22_CLS_C2_ATTR0_QHIGH_MASK;
			ql = (act->queue.index + port->first_rxq) &
			      MVPP22_CLS_C2_ATTR0_QLOW_MASK;
		}

		c2.attr[0] = FUNC6(qh) |
			      FUNC7(ql);
	}

	c2.valid = true;

	FUNC14(port->priv, &c2);

	return 0;
}