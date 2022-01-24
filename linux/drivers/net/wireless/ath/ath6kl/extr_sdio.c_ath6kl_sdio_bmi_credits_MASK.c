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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct TYPE_2__ {int cmd_credits; } ;
struct ath6kl {TYPE_1__ bmi; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMI_COMMUNICATION_TIMEOUT ; 
 scalar_t__ COUNT_DEC_ADDRESS ; 
 int ENDPOINT1 ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  HIF_RD_SYNC_BYTE_INC ; 
 int HTC_MAILBOX_NUM_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (struct ath6kl*,scalar_t__,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct ath6kl *ar)
{
	u32 addr;
	unsigned long timeout;
	int ret;

	ar->bmi.cmd_credits = 0;

	/* Read the counter register to get the command credits */
	addr = COUNT_DEC_ADDRESS + (HTC_MAILBOX_NUM_MAX + ENDPOINT1) * 4;

	timeout = jiffies + FUNC2(BMI_COMMUNICATION_TIMEOUT);
	while (FUNC3(jiffies, timeout) && !ar->bmi.cmd_credits) {
		/*
		 * Hit the credit counter with a 4-byte access, the first byte
		 * read will hit the counter and cause a decrement, while the
		 * remaining 3 bytes has no effect. The rationale behind this
		 * is to make all HIF accesses 4-byte aligned.
		 */
		ret = FUNC1(ar, addr,
					 (u8 *)&ar->bmi.cmd_credits, 4,
					 HIF_RD_SYNC_BYTE_INC);
		if (ret) {
			FUNC0("Unable to decrement the command credit count register: %d\n",
				   ret);
			return ret;
		}

		/* The counter is only 8 bits.
		 * Ignore anything in the upper 3 bytes
		 */
		ar->bmi.cmd_credits &= 0xFF;
	}

	if (!ar->bmi.cmd_credits) {
		FUNC0("bmi communication timeout\n");
		return -ETIMEDOUT;
	}

	return 0;
}