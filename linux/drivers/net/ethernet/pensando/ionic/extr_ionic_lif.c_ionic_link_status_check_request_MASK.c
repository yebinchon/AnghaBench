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
struct ionic_lif {int /*<<< orphan*/  deferred; int /*<<< orphan*/  state; } ;
struct ionic_deferred_work {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  IONIC_DW_TYPE_LINK_STATUS ; 
 int /*<<< orphan*/  IONIC_LIF_LINK_CHECK_REQUESTED ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct ionic_deferred_work*) ; 
 int /*<<< orphan*/  FUNC2 (struct ionic_lif*) ; 
 struct ionic_deferred_work* FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ionic_lif *lif)
{
	struct ionic_deferred_work *work;

	/* we only need one request outstanding at a time */
	if (FUNC4(IONIC_LIF_LINK_CHECK_REQUESTED, lif->state))
		return;

	if (FUNC0()) {
		work = FUNC3(sizeof(*work), GFP_ATOMIC);
		if (!work)
			return;

		work->type = IONIC_DW_TYPE_LINK_STATUS;
		FUNC1(&lif->deferred, work);
	} else {
		FUNC2(lif);
	}
}