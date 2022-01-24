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
struct TYPE_2__ {scalar_t__ en; } ;
struct ngene {TYPE_1__ ci; int /*<<< orphan*/ * channel; int /*<<< orphan*/  event_tasklet; } ;

/* Variables and functions */
 int MAX_STREAM ; 
 int /*<<< orphan*/  FUNC0 (struct ngene*) ; 
 int /*<<< orphan*/  FUNC1 (struct ngene*) ; 
 int /*<<< orphan*/  FUNC2 (struct ngene*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 struct ngene* FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct pci_dev *pdev)
{
	struct ngene *dev = FUNC4(pdev);
	int i;

	FUNC6(&dev->event_tasklet);
	for (i = MAX_STREAM - 1; i >= 0; i--)
		FUNC5(&dev->channel[i]);
	if (dev->ci.en)
		FUNC0(dev);
	FUNC2(dev);
	FUNC1(dev);
	FUNC3(pdev);
}