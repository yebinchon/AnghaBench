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
struct thermal_cooling_device {int /*<<< orphan*/  type; } ;
struct mlxsw_thermal {struct thermal_cooling_device** cdevs; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int ENODEV ; 
 int MLXSW_MFCR_PWMS_MAX ; 
 int /*<<< orphan*/ * mlxsw_thermal_external_allowed_cdev ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct mlxsw_thermal *thermal,
					struct thermal_cooling_device *cdev)
{
	int i;

	for (i = 0; i < MLXSW_MFCR_PWMS_MAX; i++)
		if (thermal->cdevs[i] == cdev)
			return i;

	/* Allow mlxsw thermal zone binding to an external cooling device */
	for (i = 0; i < FUNC0(mlxsw_thermal_external_allowed_cdev); i++) {
		if (FUNC1(cdev->type, mlxsw_thermal_external_allowed_cdev[i],
			    sizeof(cdev->type)))
			return 0;
	}

	return -ENODEV;
}