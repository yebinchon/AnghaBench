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
struct mlxsw_thermal {TYPE_1__* bus_info; int /*<<< orphan*/ ** cdevs; int /*<<< orphan*/ * tzdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int MLXSW_MFCR_PWMS_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mlxsw_thermal*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_thermal*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_thermal*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct mlxsw_thermal *thermal)
{
	int i;

	FUNC1(thermal);
	FUNC2(thermal);
	if (thermal->tzdev) {
		FUNC4(thermal->tzdev);
		thermal->tzdev = NULL;
	}

	for (i = 0; i < MLXSW_MFCR_PWMS_MAX; i++) {
		if (thermal->cdevs[i]) {
			FUNC3(thermal->cdevs[i]);
			thermal->cdevs[i] = NULL;
		}
	}

	FUNC0(thermal->bus_info->dev, thermal);
}