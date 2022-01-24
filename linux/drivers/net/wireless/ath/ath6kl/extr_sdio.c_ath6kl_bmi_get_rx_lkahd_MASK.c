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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct ath6kl {int dummy; } ;
typedef  int /*<<< orphan*/  rx_word ;

/* Variables and functions */
 int /*<<< orphan*/  BMI_COMMUNICATION_TIMEOUT ; 
 int EINVAL ; 
 int ENDPOINT1 ; 
 int /*<<< orphan*/  HIF_RD_SYNC_BYTE_INC ; 
 int /*<<< orphan*/  RX_LOOKAHEAD_VALID_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct ath6kl*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct ath6kl *ar)
{
	unsigned long timeout;
	u32 rx_word = 0;
	int ret = 0;

	timeout = jiffies + FUNC2(BMI_COMMUNICATION_TIMEOUT);
	while ((FUNC3(jiffies, timeout)) && !rx_word) {
		ret = FUNC1(ar,
					RX_LOOKAHEAD_VALID_ADDRESS,
					(u8 *)&rx_word, sizeof(rx_word),
					HIF_RD_SYNC_BYTE_INC);
		if (ret) {
			FUNC0("unable to read RX_LOOKAHEAD_VALID\n");
			return ret;
		}

		 /* all we really want is one bit */
		rx_word &= (1 << ENDPOINT1);
	}

	if (!rx_word) {
		FUNC0("bmi_recv_buf FIFO empty\n");
		return -EINVAL;
	}

	return ret;
}