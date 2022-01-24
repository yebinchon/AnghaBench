#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct t3cdev {TYPE_2__* lldev; } ;
struct t3c_data {int /*<<< orphan*/  tid_release_task; } ;
struct adapter {int /*<<< orphan*/  open_device_map; } ;
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  OFFLOAD_DEVMAP_BIT ; 
 struct t3c_data* FUNC0 (struct t3cdev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct t3cdev*) ; 
 int /*<<< orphan*/  FUNC4 (struct t3cdev*) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  offload_attr_group ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct adapter*,int /*<<< orphan*/ ) ; 
 struct adapter* FUNC9 (struct t3cdev*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct t3cdev *tdev)
{
	struct adapter *adapter = FUNC9(tdev);
	struct t3c_data *td = FUNC0(tdev);

	if (!FUNC10(OFFLOAD_DEVMAP_BIT, &adapter->open_device_map))
		return 0;

	/* Call back all registered clients */
	FUNC3(tdev);

	FUNC7(&tdev->lldev->dev.kobj, &offload_attr_group);

	/* Flush work scheduled while releasing TIDs */
	FUNC6(&td->tid_release_task);

	tdev->lldev = NULL;
	FUNC4(tdev);
	FUNC8(adapter, 0);
	FUNC1(OFFLOAD_DEVMAP_BIT, &adapter->open_device_map);

	if (!adapter->open_device_map)
		FUNC5(adapter, 0);

	FUNC2(adapter);
	return 0;
}