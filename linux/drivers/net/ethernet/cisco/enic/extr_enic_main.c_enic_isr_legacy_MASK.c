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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct enic {int /*<<< orphan*/ * intr; int /*<<< orphan*/ * napi; int /*<<< orphan*/  reset; int /*<<< orphan*/  legacy_pba; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 unsigned int FUNC1 () ; 
 unsigned int FUNC2 () ; 
 unsigned int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct enic*) ; 
 int /*<<< orphan*/  FUNC5 (struct enic*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct enic* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC13(int irq, void *data)
{
	struct net_device *netdev = data;
	struct enic *enic = FUNC7(netdev);
	unsigned int io_intr = FUNC2();
	unsigned int err_intr = FUNC1();
	unsigned int notify_intr = FUNC3();
	u32 pba;

	FUNC10(&enic->intr[io_intr]);

	pba = FUNC9(enic->legacy_pba);
	if (!pba) {
		FUNC12(&enic->intr[io_intr]);
		return IRQ_NONE;	/* not our interrupt */
	}

	if (FUNC0(pba, notify_intr)) {
		FUNC5(enic);
		FUNC11(&enic->intr[notify_intr]);
	}

	if (FUNC0(pba, err_intr)) {
		FUNC11(&enic->intr[err_intr]);
		FUNC4(enic);
		/* schedule recovery from WQ/RQ error */
		FUNC8(&enic->reset);
		return IRQ_HANDLED;
	}

	if (FUNC0(pba, io_intr))
		FUNC6(&enic->napi[0]);
	else
		FUNC12(&enic->intr[io_intr]);

	return IRQ_HANDLED;
}