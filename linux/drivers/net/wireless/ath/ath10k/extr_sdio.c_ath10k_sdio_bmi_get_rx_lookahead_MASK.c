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
 unsigned long BMI_COMMUNICATION_TIMEOUT_HZ ; 
 int EINVAL ; 
 int /*<<< orphan*/  MBOX_HOST_INT_STATUS_ADDRESS ; 
 int FUNC0 (struct ath10k*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,char*,...) ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC2 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct ath10k *ar)
{
	unsigned long timeout;
	u32 rx_word;
	int ret;

	timeout = jiffies + BMI_COMMUNICATION_TIMEOUT_HZ;
	rx_word = 0;

	while ((FUNC2(jiffies, timeout)) && !rx_word) {
		ret = FUNC0(ar,
					 MBOX_HOST_INT_STATUS_ADDRESS,
					 &rx_word);
		if (ret) {
			FUNC1(ar, "unable to read RX_LOOKAHEAD_VALID: %d\n", ret);
			return ret;
		}

		 /* all we really want is one bit */
		rx_word &= 1;
	}

	if (!rx_word) {
		FUNC1(ar, "bmi_recv_buf FIFO empty\n");
		return -EINVAL;
	}

	return ret;
}