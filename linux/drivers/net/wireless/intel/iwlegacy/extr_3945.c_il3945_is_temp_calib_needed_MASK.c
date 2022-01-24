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
struct il_priv {int temperature; int last_temperature; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int IL_TEMPERATURE_LIMIT_TIMER ; 
 int FUNC1 (struct il_priv*) ; 

__attribute__((used)) static int
FUNC2(struct il_priv *il)
{
	int temp_diff;

	il->temperature = FUNC1(il);
	temp_diff = il->temperature - il->last_temperature;

	/* get absolute value */
	if (temp_diff < 0) {
		FUNC0("Getting cooler, delta %d,\n", temp_diff);
		temp_diff = -temp_diff;
	} else if (temp_diff == 0)
		FUNC0("Same temp,\n");
	else
		FUNC0("Getting warmer, delta %d,\n", temp_diff);

	/* if we don't need calibration, *don't* update last_temperature */
	if (temp_diff < IL_TEMPERATURE_LIMIT_TIMER) {
		FUNC0("Timed thermal calib not needed\n");
		return 0;
	}

	FUNC0("Timed thermal calib needed\n");

	/* assume that caller will actually do calib ...
	 *   update the "last temperature" value */
	il->last_temperature = il->temperature;
	return 1;
}