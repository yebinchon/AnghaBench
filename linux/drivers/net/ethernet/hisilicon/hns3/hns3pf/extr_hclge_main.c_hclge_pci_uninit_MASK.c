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
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  io_base; } ;
struct hclge_dev {TYPE_1__ hw; struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct hclge_dev *hdev)
{
	struct pci_dev *pdev = hdev->pdev;

	FUNC4(pdev, hdev->hw.io_base);
	FUNC2(pdev);
	FUNC0(pdev);
	FUNC3(pdev);
	FUNC1(pdev);
}