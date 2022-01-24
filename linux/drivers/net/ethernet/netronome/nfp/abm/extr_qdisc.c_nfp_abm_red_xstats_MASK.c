#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tc_red_qopt_offload {int /*<<< orphan*/  xstats; int /*<<< orphan*/  handle; } ;
struct TYPE_4__ {TYPE_1__* band; } ;
struct nfp_qdisc {TYPE_2__ red; int /*<<< orphan*/  offloaded; } ;
struct nfp_abm_link {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  xstats; int /*<<< orphan*/  prev_xstats; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 struct nfp_qdisc* FUNC0 (struct nfp_abm_link*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_abm_link*) ; 

__attribute__((used)) static int
FUNC3(struct nfp_abm_link *alink, struct tc_red_qopt_offload *opt)
{
	struct nfp_qdisc *qdisc;

	FUNC2(alink);

	qdisc = FUNC0(alink, opt->handle);
	if (!qdisc || !qdisc->offloaded)
		return -EOPNOTSUPP;

	FUNC1(&qdisc->red.band[0].xstats,
				    &qdisc->red.band[0].prev_xstats,
				    opt->xstats);
	qdisc->red.band[0].prev_xstats = qdisc->red.band[0].xstats;
	return 0;
}