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
struct scif_peer_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  dnode; } ;
struct scif_dev {int /*<<< orphan*/  lock; int /*<<< orphan*/  spdev; int /*<<< orphan*/  peer_add_work; } ;
struct TYPE_2__ {int /*<<< orphan*/  conflock; int /*<<< orphan*/  total; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct scif_peer_dev* FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__ scif_info ; 
 int /*<<< orphan*/  FUNC7 () ; 

int FUNC8(struct scif_dev *scifdev)
{
	struct scif_peer_dev *spdev;

	FUNC4(&scifdev->lock);
	/* Flush work to ensure device register is complete */
	FUNC3(&scifdev->peer_add_work);

	/*
	 * Continue holding scifdev->lock since theoretically unregister_device
	 * can be called simultaneously from multiple threads
	 */
	spdev = FUNC6(scifdev->spdev);
	if (!spdev) {
		FUNC5(&scifdev->lock);
		return -ENODEV;
	}

	FUNC0(scifdev->spdev, NULL);
	FUNC7();
	FUNC5(&scifdev->lock);

	FUNC1(&spdev->dev, "Removing peer dnode %d\n", spdev->dnode);
	FUNC2(&spdev->dev);

	FUNC4(&scif_info.conflock);
	scif_info.total--;
	FUNC5(&scif_info.conflock);
	return 0;
}