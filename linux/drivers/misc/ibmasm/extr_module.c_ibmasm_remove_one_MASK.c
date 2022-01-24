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
struct service_processor {int /*<<< orphan*/  base_address; int /*<<< orphan*/  irq; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SYSTEM_STATE_OS_DOWN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct service_processor*) ; 
 int /*<<< orphan*/  FUNC5 (struct service_processor*) ; 
 int /*<<< orphan*/  FUNC6 (struct service_processor*) ; 
 scalar_t__ FUNC7 (struct service_processor*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct service_processor*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct service_processor*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*) ; 
 struct service_processor* FUNC12 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC14(struct pci_dev *pdev)
{
	struct service_processor *sp = FUNC12(pdev);

	FUNC0("Unregistering UART\n");
	FUNC8(sp);
	FUNC0("Sending OS down message\n");
	if (FUNC7(sp, SYSTEM_STATE_OS_DOWN))
		FUNC2("failed to get response to 'Send OS State' command\n");
	FUNC0("Disabling heartbeats\n");
	FUNC6(sp);
	FUNC0("Disabling interrupts\n");
	FUNC1(sp->base_address);
	FUNC0("Freeing SP irq\n");
	FUNC3(sp->irq, (void *)sp);
	FUNC0("Cleaning up\n");
	FUNC5(sp);
	FUNC9(sp->base_address);
	FUNC4(sp);
	FUNC10(sp);
	FUNC13(pdev);
	FUNC11(pdev);
}