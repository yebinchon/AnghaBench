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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;
struct hinic_hwdev {struct hinic_hwif* hwif; } ;
typedef  enum hinic_outbound_state { ____Placeholder_hinic_outbound_state } hinic_outbound_state ;

/* Variables and functions */
 int EFAULT ; 
 int HINIC_OUTBOUND_ENABLE ; 
 int /*<<< orphan*/  OUTBOUND_STATE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct hinic_hwif*) ; 
 unsigned long jiffies ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct hinic_hwdev *hwdev)
{
	enum hinic_outbound_state outbound_state;
	struct hinic_hwif *hwif = hwdev->hwif;
	struct pci_dev *pdev = hwif->pdev;
	unsigned long end;

	end = jiffies + FUNC2(OUTBOUND_STATE_TIMEOUT);
	do {
		outbound_state = FUNC1(hwif);

		if (outbound_state == HINIC_OUTBOUND_ENABLE)
			return 0;

		FUNC3(20);
	} while (FUNC4(jiffies, end));

	FUNC0(&pdev->dev, "Wait for OUTBOUND - Timeout\n");
	return -EFAULT;
}