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
struct cgx {int /*<<< orphan*/  cgx_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cgx*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 struct cgx* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct pci_dev *pdev)
{
	struct cgx *cgx = FUNC4(pdev);

	FUNC0(cgx);
	FUNC1(&cgx->cgx_list);
	FUNC3(pdev);
	FUNC5(pdev);
	FUNC2(pdev);
	FUNC6(pdev, NULL);
}