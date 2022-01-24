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
struct cio2_device {int /*<<< orphan*/  lock; int /*<<< orphan*/  media_dev; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  notifier; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cio2_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct cio2_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct cio2_device* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct pci_dev *pci_dev)
{
	struct cio2_device *cio2 = FUNC5(pci_dev);

	FUNC3(&cio2->media_dev);
	FUNC7(&cio2->notifier);
	FUNC6(&cio2->notifier);
	FUNC1(cio2);
	FUNC0(cio2);
	FUNC8(&cio2->v4l2_dev);
	FUNC2(&cio2->media_dev);
	FUNC4(&cio2->lock);
}