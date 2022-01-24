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
struct TYPE_2__ {int /*<<< orphan*/  bus; } ;
struct ath10k {void* cal_file; int /*<<< orphan*/  dev; TYPE_1__ hif; void* pre_cal_file; } ;
typedef  int /*<<< orphan*/  filename ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_BOOT ; 
 int /*<<< orphan*/  ATH10K_FW_DIR ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 void* FUNC4 (struct ath10k*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct ath10k *ar)
{
	char filename[100];

	/* pre-cal-<bus>-<id>.bin */
	FUNC6(filename, sizeof(filename), "pre-cal-%s-%s.bin",
		  FUNC2(ar->hif.bus), FUNC5(ar->dev));

	ar->pre_cal_file = FUNC4(ar, ATH10K_FW_DIR, filename);
	if (!FUNC0(ar->pre_cal_file))
		goto success;

	/* cal-<bus>-<id>.bin */
	FUNC6(filename, sizeof(filename), "cal-%s-%s.bin",
		  FUNC2(ar->hif.bus), FUNC5(ar->dev));

	ar->cal_file = FUNC4(ar, ATH10K_FW_DIR, filename);
	if (FUNC0(ar->cal_file))
		/* calibration file is optional, don't print any warnings */
		return FUNC1(ar->cal_file);
success:
	FUNC3(ar, ATH10K_DBG_BOOT, "found calibration file %s/%s\n",
		   ATH10K_FW_DIR, filename);

	return 0;
}