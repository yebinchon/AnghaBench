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
typedef  int /*<<< orphan*/  u32 ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_FIFO_TIMEOUT_AND_CHIP_CONTROL ; 
 int /*<<< orphan*/  ATH10K_FIFO_TIMEOUT_AND_CHIP_CONTROL_DISABLE_SLEEP_OFF ; 
 int /*<<< orphan*/  ATH10K_FIFO_TIMEOUT_AND_CHIP_CONTROL_DISABLE_SLEEP_ON ; 
 int FUNC0 (struct ath10k*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct ath10k*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,char*,int) ; 

__attribute__((used)) static int FUNC3(struct ath10k *ar, bool enable_sleep)
{
	u32 val;
	int ret;

	ret = FUNC0(ar, ATH10K_FIFO_TIMEOUT_AND_CHIP_CONTROL, &val);
	if (ret) {
		FUNC2(ar, "failed to read fifo/chip control register: %d\n",
			    ret);
		return ret;
	}

	if (enable_sleep)
		val &= ATH10K_FIFO_TIMEOUT_AND_CHIP_CONTROL_DISABLE_SLEEP_OFF;
	else
		val |= ATH10K_FIFO_TIMEOUT_AND_CHIP_CONTROL_DISABLE_SLEEP_ON;

	ret = FUNC1(ar, ATH10K_FIFO_TIMEOUT_AND_CHIP_CONTROL, val);
	if (ret) {
		FUNC2(ar, "failed to write to FIFO_TIMEOUT_AND_CHIP_CONTROL: %d",
			    ret);
		return ret;
	}

	return 0;
}