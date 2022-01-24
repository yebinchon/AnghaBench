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
struct enetc_si {int /*<<< orphan*/  pdev; int /*<<< orphan*/  hw; } ;
struct enetc_pf {int num_vfs; int /*<<< orphan*/  msg_task; struct enetc_si* si; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENETC_SI_INT_IDX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct enetc_si*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct enetc_si*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct enetc_pf *pf)
{
	struct enetc_si *si = pf->si;
	int i;

	FUNC0(&pf->msg_task);

	/* disable MR interrupts */
	FUNC1(&si->hw);

	for (i = 0; i < pf->num_vfs; i++)
		FUNC2(si, i);

	/* de-register message passing interrupt handler */
	FUNC3(FUNC4(si->pdev, ENETC_SI_INT_IDX), si);
}