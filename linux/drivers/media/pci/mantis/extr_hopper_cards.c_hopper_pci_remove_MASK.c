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
struct mantis_pci {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mantis_pci*) ; 
 int /*<<< orphan*/  FUNC1 (struct mantis_pci*) ; 
 int /*<<< orphan*/  FUNC2 (struct mantis_pci*) ; 
 int /*<<< orphan*/  FUNC3 (struct mantis_pci*) ; 
 int /*<<< orphan*/  FUNC4 (struct mantis_pci*) ; 
 struct mantis_pci* FUNC5 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *pdev)
{
	struct mantis_pci *mantis = FUNC5(pdev);

	if (mantis) {
		FUNC2(mantis);
		FUNC1(mantis);
		FUNC3(mantis);
		FUNC4(mantis);
		FUNC0(mantis);
	}
	return;

}