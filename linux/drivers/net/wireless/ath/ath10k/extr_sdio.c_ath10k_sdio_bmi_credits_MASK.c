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
typedef  int u32 ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int ATH10K_HIF_MBOX_NUM_MAX ; 
 unsigned long BMI_COMMUNICATION_TIMEOUT_HZ ; 
 int ETIMEDOUT ; 
 int MBOX_COUNT_DEC_ADDRESS ; 
 int FUNC0 (struct ath10k*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,char*,...) ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC2 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct ath10k *ar)
{
	u32 addr, cmd_credits;
	unsigned long timeout;
	int ret;

	/* Read the counter register to get the command credits */
	addr = MBOX_COUNT_DEC_ADDRESS + ATH10K_HIF_MBOX_NUM_MAX * 4;
	timeout = jiffies + BMI_COMMUNICATION_TIMEOUT_HZ;
	cmd_credits = 0;

	while (FUNC2(jiffies, timeout) && !cmd_credits) {
		/* Hit the credit counter with a 4-byte access, the first byte
		 * read will hit the counter and cause a decrement, while the
		 * remaining 3 bytes has no effect. The rationale behind this
		 * is to make all HIF accesses 4-byte aligned.
		 */
		ret = FUNC0(ar, addr, &cmd_credits);
		if (ret) {
			FUNC1(ar,
				    "unable to decrement the command credit count register: %d\n",
				    ret);
			return ret;
		}

		/* The counter is only 8 bits.
		 * Ignore anything in the upper 3 bytes
		 */
		cmd_credits &= 0xFF;
	}

	if (!cmd_credits) {
		FUNC1(ar, "bmi communication timeout\n");
		return -ETIMEDOUT;
	}

	return 0;
}