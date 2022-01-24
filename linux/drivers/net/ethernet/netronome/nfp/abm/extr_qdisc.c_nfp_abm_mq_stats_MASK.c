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
typedef  int /*<<< orphan*/  u32 ;
struct tc_qopt_offload_stats {int /*<<< orphan*/  qstats; int /*<<< orphan*/  bstats; } ;
struct TYPE_6__ {int /*<<< orphan*/  prev_stats; int /*<<< orphan*/  stats; } ;
struct TYPE_5__ {unsigned int num_bands; TYPE_1__* band; } ;
struct nfp_qdisc {unsigned int num_children; scalar_t__ offloaded; TYPE_3__ mq; TYPE_2__ red; struct nfp_qdisc** children; } ;
struct nfp_abm_link {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  prev_stats; int /*<<< orphan*/  stats; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_qdisc*,unsigned int) ; 
 struct nfp_qdisc* FUNC2 (struct nfp_abm_link*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_qdisc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct nfp_abm_link*) ; 

__attribute__((used)) static int
FUNC7(struct nfp_abm_link *alink, u32 handle,
		 struct tc_qopt_offload_stats *stats)
{
	struct nfp_qdisc *qdisc, *red;
	unsigned int i, j;

	qdisc = FUNC2(alink, handle);
	if (!qdisc)
		return -EOPNOTSUPP;

	FUNC6(alink);

	/* MQ stats are summed over the children in the core, so we need
	 * to add up the unreported child values.
	 */
	FUNC0(&qdisc->mq.stats, 0, sizeof(qdisc->mq.stats));
	FUNC0(&qdisc->mq.prev_stats, 0, sizeof(qdisc->mq.prev_stats));

	for (i = 0; i < qdisc->num_children; i++) {
		if (!FUNC1(qdisc, i))
			continue;

		if (!FUNC3(qdisc->children[i]))
			continue;
		red = qdisc->children[i];

		for (j = 0; j < red->red.num_bands; j++) {
			FUNC5(&qdisc->mq.stats,
						&red->red.band[j].stats);
			FUNC5(&qdisc->mq.prev_stats,
						&red->red.band[j].prev_stats);
		}
	}

	FUNC4(&qdisc->mq.stats, &qdisc->mq.prev_stats,
				stats->bstats, stats->qstats);

	return qdisc->offloaded ? 0 : -EOPNOTSUPP;
}