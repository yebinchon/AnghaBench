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
struct TYPE_4__ {scalar_t__ firmware_len; int /*<<< orphan*/ * firmware_data; int /*<<< orphan*/ * firmware; scalar_t__ otp_len; int /*<<< orphan*/ * otp_data; } ;
struct TYPE_3__ {TYPE_2__ fw_file; } ;
struct ath10k {int /*<<< orphan*/ * pre_cal_file; int /*<<< orphan*/ * cal_file; TYPE_1__ normal_mode_fw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct ath10k *ar)
{
	if (!FUNC0(ar->normal_mode_fw.fw_file.firmware))
		FUNC2(ar->normal_mode_fw.fw_file.firmware);

	if (!FUNC0(ar->cal_file))
		FUNC2(ar->cal_file);

	if (!FUNC0(ar->pre_cal_file))
		FUNC2(ar->pre_cal_file);

	FUNC1(ar, &ar->normal_mode_fw.fw_file);

	ar->normal_mode_fw.fw_file.otp_data = NULL;
	ar->normal_mode_fw.fw_file.otp_len = 0;

	ar->normal_mode_fw.fw_file.firmware = NULL;
	ar->normal_mode_fw.fw_file.firmware_data = NULL;
	ar->normal_mode_fw.fw_file.firmware_len = 0;

	ar->cal_file = NULL;
	ar->pre_cal_file = NULL;
}