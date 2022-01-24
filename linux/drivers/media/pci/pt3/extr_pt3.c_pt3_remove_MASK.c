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
struct pt3_board {int /*<<< orphan*/ * regs; int /*<<< orphan*/  pdev; struct pt3_board* i2c_buf; int /*<<< orphan*/  i2c_adap; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int PT3_NUM_FE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pt3_board*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 struct pt3_board* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pt3_board*,int) ; 

__attribute__((used)) static void FUNC7(struct pci_dev *pdev)
{
	struct pt3_board *pt3;
	int i;

	pt3 = FUNC3(pdev);
	for (i = PT3_NUM_FE - 1; i >= 0; i--)
		FUNC6(pt3, i);
	FUNC0(&pt3->i2c_adap);
	FUNC1(pt3->i2c_buf);
	FUNC4(pt3->pdev, pt3->regs[0]);
	FUNC4(pt3->pdev, pt3->regs[1]);
	FUNC5(pdev);
	FUNC2(pdev);
	FUNC1(pt3);
}