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
struct ionic {TYPE_1__* master_lif; int /*<<< orphan*/  dl_port; int /*<<< orphan*/  dev; } ;
struct devlink {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVLINK_PORT_FLAVOUR_PHYSICAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct devlink*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct devlink*,int /*<<< orphan*/ ) ; 
 struct devlink* FUNC6 (struct ionic*) ; 

int FUNC7(struct ionic *ionic)
{
	struct devlink *dl = FUNC6(ionic);
	int err;

	err = FUNC5(dl, ionic->dev);
	if (err) {
		FUNC1(ionic->dev, "devlink_register failed: %d\n", err);
		return err;
	}

	FUNC2(&ionic->dl_port, DEVLINK_PORT_FLAVOUR_PHYSICAL,
			       0, false, 0, NULL, 0);
	err = FUNC3(dl, &ionic->dl_port, 0);
	if (err)
		FUNC0(ionic->dev, "devlink_port_register failed: %d\n", err);
	else
		FUNC4(&ionic->dl_port,
					  ionic->master_lif->netdev);

	return err;
}