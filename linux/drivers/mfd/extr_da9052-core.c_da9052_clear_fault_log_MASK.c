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
struct da9052 {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DA9052_FAULTLOG_KEYSHUT ; 
 int DA9052_FAULTLOG_NSDSET ; 
 int /*<<< orphan*/  DA9052_FAULTLOG_REG ; 
 int DA9052_FAULTLOG_TEMPOVER ; 
 int DA9052_FAULTLOG_TWDERROR ; 
 int DA9052_FAULTLOG_VDDFAULT ; 
 int DA9052_FAULTLOG_VDDSTART ; 
 int DA9052_FAULTLOG_WAITSET ; 
 int FUNC0 (struct da9052*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct da9052*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC4(struct da9052 *da9052)
{
	int ret = 0;
	int fault_log = 0;

	fault_log = FUNC0(da9052, DA9052_FAULTLOG_REG);
	if (fault_log < 0) {
		FUNC3(da9052->dev,
			"Cannot read FAULT_LOG %d\n", fault_log);
		return fault_log;
	}

	if (fault_log) {
		if (fault_log & DA9052_FAULTLOG_TWDERROR)
			FUNC2(da9052->dev,
				"Fault log entry detected: TWD_ERROR\n");
		if (fault_log & DA9052_FAULTLOG_VDDFAULT)
			FUNC2(da9052->dev,
				"Fault log entry detected: VDD_FAULT\n");
		if (fault_log & DA9052_FAULTLOG_VDDSTART)
			FUNC2(da9052->dev,
				"Fault log entry detected: VDD_START\n");
		if (fault_log & DA9052_FAULTLOG_TEMPOVER)
			FUNC2(da9052->dev,
				"Fault log entry detected: TEMP_OVER\n");
		if (fault_log & DA9052_FAULTLOG_KEYSHUT)
			FUNC2(da9052->dev,
				"Fault log entry detected: KEY_SHUT\n");
		if (fault_log & DA9052_FAULTLOG_NSDSET)
			FUNC2(da9052->dev,
				"Fault log entry detected: nSD_SHUT\n");
		if (fault_log & DA9052_FAULTLOG_WAITSET)
			FUNC2(da9052->dev,
				"Fault log entry detected: WAIT_SHUT\n");

		ret = FUNC1(da9052,
					DA9052_FAULTLOG_REG,
					0xFF);
		if (ret < 0)
			FUNC3(da9052->dev,
				"Cannot reset FAULT_LOG values %d\n", ret);
	}

	return ret;
}