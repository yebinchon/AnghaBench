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
typedef  scalar_t__ u32 ;
struct rocker_desc_info {int dummy; } ;
struct rocker {int /*<<< orphan*/  event_ring; struct pci_dev* pdev; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct rocker_desc_info const*) ; 
 int /*<<< orphan*/  FUNC2 (struct rocker_desc_info const*) ; 
 int /*<<< orphan*/  FUNC3 (struct rocker*,int /*<<< orphan*/ *,struct rocker_desc_info const*) ; 
 struct rocker_desc_info* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rocker*,int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC6 (struct rocker*,struct rocker_desc_info const*) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_id)
{
	struct rocker *rocker = dev_id;
	const struct pci_dev *pdev = rocker->pdev;
	const struct rocker_desc_info *desc_info;
	u32 credits = 0;
	int err;

	while ((desc_info = FUNC4(&rocker->event_ring))) {
		err = FUNC1(desc_info);
		if (err) {
			FUNC0(&pdev->dev, "event desc received with err %d\n",
				err);
		} else {
			err = FUNC6(rocker, desc_info);
			if (err)
				FUNC0(&pdev->dev, "event processing failed with err %d\n",
					err);
		}
		FUNC2(desc_info);
		FUNC3(rocker, &rocker->event_ring, desc_info);
		credits++;
	}
	FUNC5(rocker, &rocker->event_ring, credits);

	return IRQ_HANDLED;
}