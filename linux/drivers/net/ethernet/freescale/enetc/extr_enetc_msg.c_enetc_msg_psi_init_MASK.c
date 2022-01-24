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
struct enetc_si {int /*<<< orphan*/  hw; TYPE_2__* pdev; TYPE_1__* ndev; } ;
struct enetc_pf {int num_vfs; int /*<<< orphan*/  msg_task; int /*<<< orphan*/  msg_int_name; struct enetc_si* si; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENETC_SIMSIVR ; 
 int /*<<< orphan*/  ENETC_SI_INT_IDX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct enetc_si*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct enetc_si*,int) ; 
 int /*<<< orphan*/  enetc_msg_psi_msix ; 
 int /*<<< orphan*/  enetc_msg_task ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,struct enetc_si*) ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct enetc_si*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,char*,char*) ; 

int FUNC10(struct enetc_pf *pf)
{
	struct enetc_si *si = pf->si;
	int vector, i, err;

	/* register message passing interrupt handler */
	FUNC9(pf->msg_int_name, sizeof(pf->msg_int_name), "%s-vfmsg",
		 si->ndev->name);
	vector = FUNC7(si->pdev, ENETC_SI_INT_IDX);
	err = FUNC8(vector, enetc_msg_psi_msix, 0, pf->msg_int_name, si);
	if (err) {
		FUNC1(&si->pdev->dev,
			"PSI messaging: request_irq() failed!\n");
		return err;
	}

	/* set one IRQ entry for PSI message receive notification (SI int) */
	FUNC5(&si->hw, ENETC_SIMSIVR, ENETC_SI_INT_IDX);

	/* initialize PSI mailbox */
	FUNC0(&pf->msg_task, enetc_msg_task);

	for (i = 0; i < pf->num_vfs; i++) {
		err = FUNC2(si, i);
		if (err)
			goto err_init_mbx;
	}

	/* enable MR interrupts */
	FUNC3(&si->hw);

	return 0;

err_init_mbx:
	for (i--; i >= 0; i--)
		FUNC4(si, i);

	FUNC6(vector, si);

	return err;
}