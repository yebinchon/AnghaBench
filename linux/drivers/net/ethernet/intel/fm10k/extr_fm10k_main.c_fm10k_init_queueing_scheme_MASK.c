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
struct fm10k_intfc {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  FUNC2 (struct fm10k_intfc*) ; 
 int FUNC3 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  FUNC4 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  FUNC5 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  FUNC6 (struct fm10k_intfc*) ; 
 int /*<<< orphan*/  FUNC7 (struct fm10k_intfc*) ; 

int FUNC8(struct fm10k_intfc *interface)
{
	int err;

	/* Number of supported queues */
	FUNC7(interface);

	/* Configure MSI-X capability */
	err = FUNC3(interface);
	if (err) {
		FUNC0(&interface->pdev->dev,
			"Unable to initialize MSI-X capability\n");
		goto err_init_msix;
	}

	/* Allocate memory for queues */
	err = FUNC1(interface);
	if (err) {
		FUNC0(&interface->pdev->dev,
			"Unable to allocate queue vectors\n");
		goto err_alloc_q_vectors;
	}

	/* Map rings to devices, and map devices to physical queues */
	FUNC2(interface);

	/* Initialize RSS redirection table */
	FUNC4(interface);

	return 0;

err_alloc_q_vectors:
	FUNC5(interface);
err_init_msix:
	FUNC6(interface);
	return err;
}