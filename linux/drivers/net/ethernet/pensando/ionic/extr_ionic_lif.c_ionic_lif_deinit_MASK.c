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
struct ionic_lif {TYPE_1__* adminqcq; TYPE_1__* notifyqcq; int /*<<< orphan*/  state; } ;
struct TYPE_2__ {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  IONIC_LIF_INITED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ionic_lif*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct ionic_lif*) ; 
 int /*<<< orphan*/  FUNC3 (struct ionic_lif*) ; 
 int /*<<< orphan*/  FUNC4 (struct ionic_lif*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct ionic_lif *lif)
{
	if (!FUNC6(IONIC_LIF_INITED, lif->state))
		return;

	FUNC0(IONIC_LIF_INITED, lif->state);

	FUNC4(lif);
	FUNC3(lif);

	FUNC5(&lif->adminqcq->napi);
	FUNC1(lif, lif->notifyqcq);
	FUNC1(lif, lif->adminqcq);

	FUNC2(lif);
}