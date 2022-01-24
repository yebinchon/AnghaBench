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
struct qed_dev {scalar_t__ regview; scalar_t__ doorbells; scalar_t__ db_size; struct pci_dev* pdev; } ;
struct pci_dev {int /*<<< orphan*/  enable_cnt; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC4(struct qed_dev *cdev)
{
	struct pci_dev *pdev = cdev->pdev;

	if (cdev->doorbells && cdev->db_size)
		FUNC1(cdev->doorbells);
	if (cdev->regview)
		FUNC1(cdev->regview);
	if (FUNC0(&pdev->enable_cnt) == 1)
		FUNC3(pdev);

	FUNC2(pdev);
}