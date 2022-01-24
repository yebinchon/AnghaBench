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
struct pciefd_board {int /*<<< orphan*/  reg_base; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 struct pciefd_board* FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pciefd_board*) ; 

__attribute__((used)) static void FUNC5(struct pci_dev *pdev)
{
	struct pciefd_board *pciefd = FUNC1(pdev);

	/* release CAN-FD channels resources */
	FUNC4(pciefd);

	FUNC2(pdev, pciefd->reg_base);

	FUNC3(pdev);
	FUNC0(pdev);
}