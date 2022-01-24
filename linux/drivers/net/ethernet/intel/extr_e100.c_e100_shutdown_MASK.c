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

/* Variables and functions */
 scalar_t__ SYSTEM_POWER_OFF ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int*) ; 
 scalar_t__ system_state ; 

__attribute__((used)) static void FUNC2(struct pci_dev *pdev)
{
	bool wake;
	FUNC1(pdev, &wake);
	if (system_state == SYSTEM_POWER_OFF)
		FUNC0(pdev, wake);
}