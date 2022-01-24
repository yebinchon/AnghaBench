#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  syncp; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  list; } ;
struct slic_device {TYPE_3__* pdev; TYPE_2__ stats; TYPE_1__ upr_list; int /*<<< orphan*/  link_lock; int /*<<< orphan*/  upper_lock; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct slic_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct slic_device*) ; 
 int FUNC4 (struct slic_device*) ; 
 int FUNC5 (struct slic_device*) ; 
 int FUNC6 (struct slic_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct slic_device *sdev)
{
	int err;

	FUNC7(&sdev->upper_lock);
	FUNC7(&sdev->link_lock);
	FUNC0(&sdev->upr_list.list);
	FUNC7(&sdev->upr_list.lock);
	FUNC8(&sdev->stats.syncp);

	FUNC2(sdev);

	err = FUNC5(sdev);
	if (err) {
		FUNC1(&sdev->pdev->dev, "failed to load firmware\n");
		return err;
	}

	/* we need the shared memory to read EEPROM so set it up temporarily */
	err = FUNC4(sdev);
	if (err) {
		FUNC1(&sdev->pdev->dev, "failed to init shared memory\n");
		return err;
	}

	err = FUNC6(sdev);
	if (err) {
		FUNC1(&sdev->pdev->dev, "failed to read eeprom\n");
		goto free_sm;
	}

	FUNC2(sdev);
	FUNC3(sdev);

	return 0;
free_sm:
	FUNC3(sdev);

	return err;
}