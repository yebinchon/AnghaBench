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
struct ena_com_dev {int dummy; } ;

/* Variables and functions */
 int ENA_BAR_MASK ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int) ; 
 int FUNC1 (struct pci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ena_com_dev *ena_dev, struct pci_dev *pdev)
{
	int release_bars = FUNC1(pdev, IORESOURCE_MEM) & ENA_BAR_MASK;

	FUNC0(pdev, release_bars);
}