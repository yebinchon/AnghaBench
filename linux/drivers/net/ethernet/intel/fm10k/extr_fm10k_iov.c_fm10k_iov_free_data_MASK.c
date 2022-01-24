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
struct pci_dev {int dummy; } ;
struct fm10k_intfc {int /*<<< orphan*/ * iov_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct fm10k_intfc* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  rcu ; 

__attribute__((used)) static void FUNC3(struct pci_dev *pdev)
{
	struct fm10k_intfc *interface = FUNC2(pdev);

	if (!interface->iov_data)
		return;

	/* reclaim hardware resources */
	FUNC0(pdev);

	/* drop iov_data from interface */
	FUNC1(interface->iov_data, rcu);
	interface->iov_data = NULL;
}