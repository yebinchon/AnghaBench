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
struct TYPE_2__ {int /*<<< orphan*/  rq; int /*<<< orphan*/  xq; int /*<<< orphan*/  dead; } ;
struct ppp {int /*<<< orphan*/  dev; int /*<<< orphan*/  xmit_recursion; int /*<<< orphan*/  xmit_pending; int /*<<< orphan*/ * active_filter; int /*<<< orphan*/ * pass_filter; int /*<<< orphan*/  mrq; TYPE_1__ file; int /*<<< orphan*/ * vj; scalar_t__ n_channels; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,struct ppp*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct ppp*) ; 
 int /*<<< orphan*/  ppp_unit_count ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct ppp *ppp)
{
	FUNC0(&ppp_unit_count);

	if (!ppp->file.dead || ppp->n_channels) {
		/* "can't happen" */
		FUNC5(ppp->dev, "ppp: destroying ppp struct %p "
			   "but dead=%d n_channels=%d !\n",
			   ppp, ppp->file.dead, ppp->n_channels);
		return;
	}

	FUNC6(ppp);
	if (ppp->vj) {
		FUNC8(ppp->vj);
		ppp->vj = NULL;
	}
	FUNC7(&ppp->file.xq);
	FUNC7(&ppp->file.rq);
#ifdef CONFIG_PPP_MULTILINK
	skb_queue_purge(&ppp->mrq);
#endif /* CONFIG_PPP_MULTILINK */
#ifdef CONFIG_PPP_FILTER
	if (ppp->pass_filter) {
		bpf_prog_destroy(ppp->pass_filter);
		ppp->pass_filter = NULL;
	}

	if (ppp->active_filter) {
		bpf_prog_destroy(ppp->active_filter);
		ppp->active_filter = NULL;
	}
#endif /* CONFIG_PPP_FILTER */

	FUNC4(ppp->xmit_pending);
	FUNC3(ppp->xmit_recursion);

	FUNC2(ppp->dev);
}