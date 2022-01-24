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
struct pti_dev {int /*<<< orphan*/  pti_ioaddr; int /*<<< orphan*/ * port; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 unsigned int PTITTY_MINOR_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pti_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 struct pti_dev* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  pti_char_driver ; 
 int /*<<< orphan*/  pti_console ; 
 int /*<<< orphan*/  pti_tty_driver ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct pci_dev *pdev)
{
	struct pti_dev *drv_data = FUNC4(pdev);
	unsigned int a;

	FUNC8(&pti_console);

	for (a = 0; a < PTITTY_MINOR_NUM; a++) {
		FUNC7(pti_tty_driver, a);
		FUNC6(&drv_data->port[a]);
	}

	FUNC0(drv_data->pti_ioaddr);
	FUNC1(drv_data);
	FUNC5(pdev, 1);
	FUNC3(pdev);

	FUNC2(&pti_char_driver);
}