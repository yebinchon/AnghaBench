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
typedef  int u8 ;
struct ushc_data {int last_status; int /*<<< orphan*/  int_urb; int /*<<< orphan*/  flags; int /*<<< orphan*/  mmc; TYPE_1__* int_data; } ;
struct urb {scalar_t__ status; struct ushc_data* context; } ;
struct TYPE_2__ {int status; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  IGNORE_NEXT_INT ; 
 int /*<<< orphan*/  INT_EN ; 
 int USHC_INT_STATUS_CARD_PRESENT ; 
 int USHC_INT_STATUS_SDIO_INT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct urb *urb)
{
	struct ushc_data *ushc = urb->context;
	u8 status, last_status;

	if (urb->status < 0)
		return;

	status = ushc->int_data->status;
	last_status = ushc->last_status;
	ushc->last_status = status;

	/*
	 * Ignore the card interrupt status on interrupt transfers that
	 * were submitted while card interrupts where disabled.
	 *
	 * This avoid occasional spurious interrupts when enabling
	 * interrupts immediately after clearing the source on the card.
	 */

	if (!FUNC4(IGNORE_NEXT_INT, &ushc->flags)
	    && FUNC5(INT_EN, &ushc->flags)
	    && status & USHC_INT_STATUS_SDIO_INT) {
		FUNC1(ushc->mmc);
	}

	if ((status ^ last_status) & USHC_INT_STATUS_CARD_PRESENT)
		FUNC0(ushc->mmc, FUNC2(100));

	if (!FUNC5(INT_EN, &ushc->flags))
		FUNC3(IGNORE_NEXT_INT, &ushc->flags);
	FUNC6(ushc->int_urb, GFP_ATOMIC);
}