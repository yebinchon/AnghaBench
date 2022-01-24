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
typedef  void* u32 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct msix_entry {int /*<<< orphan*/  vector; int /*<<< orphan*/  entry; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;
struct hinic_eq_work {int /*<<< orphan*/  work; } ;
struct hinic_eq {int type; int q_id; scalar_t__ num_pages; int num_elem_in_pg; struct msix_entry msix_entry; struct hinic_hwif* hwif; int /*<<< orphan*/  ceq_tasklet; struct hinic_eq_work aeq_work; int /*<<< orphan*/  elem_size; scalar_t__ wrapped; scalar_t__ cons_idx; void* page_size; void* q_len; } ;
typedef  enum hinic_eq_type { ____Placeholder_hinic_eq_type } hinic_eq_type ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct hinic_eq*) ; 
 scalar_t__ EQ_MAX_PAGES ; 
 int /*<<< orphan*/  FUNC1 (struct hinic_eq*) ; 
 int FUNC2 (struct hinic_eq*,void*) ; 
 scalar_t__ FUNC3 (struct hinic_eq*,void*) ; 
 int HINIC_AEQ ; 
 int /*<<< orphan*/  HINIC_AEQE_SIZE ; 
 int HINIC_CEQ ; 
 int /*<<< orphan*/  HINIC_CEQE_SIZE ; 
 int /*<<< orphan*/  HINIC_EQ_MSIX_COALESC_TIMER_DEFAULT ; 
 int /*<<< orphan*/  HINIC_EQ_MSIX_LLI_CREDIT_LIMIT_DEFAULT ; 
 int /*<<< orphan*/  HINIC_EQ_MSIX_LLI_TIMER_DEFAULT ; 
 int /*<<< orphan*/  HINIC_EQ_MSIX_PENDING_LIMIT_DEFAULT ; 
 int /*<<< orphan*/  HINIC_EQ_MSIX_RESEND_TIMER_DEFAULT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aeq_interrupt ; 
 int FUNC5 (struct hinic_eq*) ; 
 int /*<<< orphan*/  ceq_interrupt ; 
 int /*<<< orphan*/  ceq_tasklet ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  eq_irq_work ; 
 int /*<<< orphan*/  FUNC7 (struct hinic_eq*) ; 
 int /*<<< orphan*/  FUNC8 (struct hinic_eq*) ; 
 int /*<<< orphan*/  FUNC9 (struct hinic_hwif*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct hinic_hwif*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct hinic_eq*) ; 
 int /*<<< orphan*/  FUNC12 (struct hinic_eq*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC14(struct hinic_eq *eq, struct hinic_hwif *hwif,
		   enum hinic_eq_type type, int q_id, u32 q_len, u32 page_size,
		   struct msix_entry entry)
{
	struct pci_dev *pdev = hwif->pdev;
	int err;

	eq->hwif = hwif;
	eq->type = type;
	eq->q_id = q_id;
	eq->q_len = q_len;
	eq->page_size = page_size;

	/* Clear PI and CI, also clear the ARM bit */
	FUNC9(eq->hwif, FUNC0(eq), 0);
	FUNC9(eq->hwif, FUNC1(eq), 0);

	eq->cons_idx = 0;
	eq->wrapped = 0;

	if (type == HINIC_AEQ) {
		eq->elem_size = HINIC_AEQE_SIZE;
	} else if (type == HINIC_CEQ) {
		eq->elem_size = HINIC_CEQE_SIZE;
	} else {
		FUNC6(&pdev->dev, "Invalid EQ type\n");
		return -EINVAL;
	}

	eq->num_pages = FUNC3(eq, page_size);
	eq->num_elem_in_pg = FUNC2(eq, page_size);

	eq->msix_entry = entry;

	if (eq->num_elem_in_pg & (eq->num_elem_in_pg - 1)) {
		FUNC6(&pdev->dev, "num elements in eq page != power of 2\n");
		return -EINVAL;
	}

	if (eq->num_pages > EQ_MAX_PAGES) {
		FUNC6(&pdev->dev, "too many pages for eq\n");
		return -EINVAL;
	}

	FUNC12(eq);
	FUNC7(eq);

	err = FUNC5(eq);
	if (err) {
		FUNC6(&pdev->dev, "Failed to allocate pages for eq\n");
		return err;
	}

	if (type == HINIC_AEQ) {
		struct hinic_eq_work *aeq_work = &eq->aeq_work;

		FUNC4(&aeq_work->work, eq_irq_work);
	} else if (type == HINIC_CEQ) {
		FUNC13(&eq->ceq_tasklet, ceq_tasklet,
			     (unsigned long)eq);
	}

	/* set the attributes of the msix entry */
	FUNC10(eq->hwif, eq->msix_entry.entry,
			    HINIC_EQ_MSIX_PENDING_LIMIT_DEFAULT,
			    HINIC_EQ_MSIX_COALESC_TIMER_DEFAULT,
			    HINIC_EQ_MSIX_LLI_TIMER_DEFAULT,
			    HINIC_EQ_MSIX_LLI_CREDIT_LIMIT_DEFAULT,
			    HINIC_EQ_MSIX_RESEND_TIMER_DEFAULT);

	if (type == HINIC_AEQ)
		err = FUNC11(entry.vector, aeq_interrupt, 0,
				  "hinic_aeq", eq);
	else if (type == HINIC_CEQ)
		err = FUNC11(entry.vector, ceq_interrupt, 0,
				  "hinic_ceq", eq);

	if (err) {
		FUNC6(&pdev->dev, "Failed to request irq for the EQ\n");
		goto err_req_irq;
	}

	return 0;

err_req_irq:
	FUNC8(eq);
	return err;
}