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
struct TYPE_2__ {struct sx8* base; } ;
struct sx8 {scalar_t__ count; int /*<<< orphan*/  mci_list; TYPE_1__ mci; } ;
struct mci_base {scalar_t__ count; int /*<<< orphan*/  mci_list; TYPE_1__ mci; } ;
struct dvb_frontend {struct sx8* demodulator_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sx8*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct dvb_frontend *fe)
{
	struct sx8 *state = fe->demodulator_priv;
	struct mci_base *mci_base = state->mci.base;

	mci_base->count--;
	if (mci_base->count == 0) {
		FUNC1(&mci_base->mci_list);
		FUNC0(mci_base);
	}
	FUNC0(state);
}