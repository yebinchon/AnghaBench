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
struct genwqe_dev {int /*<<< orphan*/  pci_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct genwqe_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct genwqe_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct genwqe_dev*) ; 
 scalar_t__ FUNC3 (struct genwqe_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct genwqe_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct genwqe_dev *cd)
{
	FUNC2(cd);	    /* no register access */
	FUNC0(cd);	    /* device removed, procs killed */
	FUNC4(cd);   /* here genwqe_thread is stopped */

	if (FUNC3(cd)) {
		FUNC5(cd->pci_dev);	/* access pci config space */
		FUNC1(cd);
	}

	return 0;
}