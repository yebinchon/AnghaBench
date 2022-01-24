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
struct pci_dev {int /*<<< orphan*/  revision; } ;
struct TYPE_2__ {scalar_t__ next_avail_src; } ;
struct mic_device {TYPE_1__ irq_info; int /*<<< orphan*/  mic_mutex; int /*<<< orphan*/  stepping; int /*<<< orphan*/  family; struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct mic_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct mic_device *mdev, struct pci_dev *pdev)
{
	mdev->pdev = pdev;
	mdev->family = FUNC0(pdev);
	mdev->stepping = pdev->revision;
	FUNC1(mdev);
	FUNC2(&mdev->mic_mutex);
	mdev->irq_info.next_avail_src = 0;
}