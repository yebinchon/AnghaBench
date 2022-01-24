#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct nicpf {int num_vec; int* irq_allocated; TYPE_1__* pdev; int /*<<< orphan*/ * irq_name; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int NIC_PF_INTR_ID_MBOX0 ; 
 int /*<<< orphan*/  PCI_IRQ_MSIX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct nicpf*) ; 
 int /*<<< orphan*/  FUNC2 (struct nicpf*) ; 
 int /*<<< orphan*/  nic_mbx_intr_handler ; 
 int FUNC3 (TYPE_1__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int FUNC6 (TYPE_1__*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nicpf*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC9(struct nicpf *nic)
{
	int i, ret;
	nic->num_vec = FUNC6(nic->pdev);

	/* Enable MSI-X */
	ret = FUNC3(nic->pdev, nic->num_vec, nic->num_vec,
				    PCI_IRQ_MSIX);
	if (ret < 0) {
		FUNC0(&nic->pdev->dev,
			"Request for #%d msix vectors failed, returned %d\n",
			   nic->num_vec, ret);
		return 1;
	}

	/* Register mailbox interrupt handler */
	for (i = NIC_PF_INTR_ID_MBOX0; i < nic->num_vec; i++) {
		FUNC8(nic->irq_name[i],
			"NICPF Mbox%d", (i - NIC_PF_INTR_ID_MBOX0));

		ret = FUNC7(FUNC5(nic->pdev, i),
				  nic_mbx_intr_handler, 0,
				  nic->irq_name[i], nic);
		if (ret)
			goto fail;

		nic->irq_allocated[i] = true;
	}

	/* Enable mailbox interrupt */
	FUNC1(nic);
	return 0;

fail:
	FUNC0(&nic->pdev->dev, "Request irq failed\n");
	FUNC2(nic);
	FUNC4(nic->pdev);
	nic->num_vec = 0;
	return ret;
}