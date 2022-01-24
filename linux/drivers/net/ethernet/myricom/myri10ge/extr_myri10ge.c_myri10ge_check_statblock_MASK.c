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
struct myri10ge_priv {unsigned int link_state; void* rdma_tags_available; int /*<<< orphan*/  down_wq; int /*<<< orphan*/  down_cnt; int /*<<< orphan*/  dev; int /*<<< orphan*/  link_changes; TYPE_1__* ss; } ;
struct mcp_irq_data {scalar_t__ link_down; int /*<<< orphan*/  rdma_tags_available; int /*<<< orphan*/  link_up; int /*<<< orphan*/  stats_updated; } ;
struct TYPE_2__ {struct mcp_irq_data* fw_stats; } ;

/* Variables and functions */
 unsigned int MXGEFW_LINK_MYRINET ; 
 unsigned int MXGEFW_LINK_UP ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct myri10ge_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC7(struct myri10ge_priv *mgp)
{
	struct mcp_irq_data *stats = mgp->ss[0].fw_stats;

	if (FUNC5(stats->stats_updated)) {
		unsigned link_up = FUNC4(stats->link_up);
		if (mgp->link_state != link_up) {
			mgp->link_state = link_up;

			if (mgp->link_state == MXGEFW_LINK_UP) {
				FUNC3(mgp, link, mgp->dev, "link up\n");
				FUNC2(mgp->dev);
				mgp->link_changes++;
			} else {
				FUNC3(mgp, link, mgp->dev, "link %s\n",
					   (link_up == MXGEFW_LINK_MYRINET ?
					    "mismatch (Myrinet detected)" :
					    "down"));
				FUNC1(mgp->dev);
				mgp->link_changes++;
			}
		}
		if (mgp->rdma_tags_available !=
		    FUNC4(stats->rdma_tags_available)) {
			mgp->rdma_tags_available =
			    FUNC4(stats->rdma_tags_available);
			FUNC0(mgp->dev, "RDMA timed out! %d tags left\n",
				    mgp->rdma_tags_available);
		}
		mgp->down_cnt += stats->link_down;
		if (stats->link_down)
			FUNC6(&mgp->down_wq);
	}
}