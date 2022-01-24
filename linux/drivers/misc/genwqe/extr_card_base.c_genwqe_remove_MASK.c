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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct genwqe_dev {int dummy; } ;

/* Variables and functions */
 struct genwqe_dev* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct genwqe_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct genwqe_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct genwqe_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct genwqe_dev*) ; 

__attribute__((used)) static void FUNC5(struct pci_dev *pci_dev)
{
	struct genwqe_dev *cd = FUNC0(&pci_dev->dev);

	FUNC2(cd);

	/*
	 * genwqe_stop() must survive if it is called twice
	 * sequentially. This happens when the health thread calls it
	 * and fails on genwqe_bus_reset().
	 */
	FUNC4(cd);
	FUNC3(cd);
	FUNC1(cd);
}