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
struct toshsd_host {int /*<<< orphan*/  mmc; int /*<<< orphan*/  ioaddr; } ;
struct pci_dev {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct toshsd_host*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 struct toshsd_host* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct toshsd_host*) ; 

__attribute__((used)) static void FUNC9(struct pci_dev *pdev)
{
	struct toshsd_host *host = FUNC4(pdev);

	FUNC2(host->mmc);
	FUNC8(host);
	FUNC0(pdev->irq, host);
	FUNC5(pdev, host->ioaddr);
	FUNC6(pdev);
	FUNC1(host->mmc);
	FUNC7(pdev, NULL);
	FUNC3(pdev);
}