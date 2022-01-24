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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct lan78xx_net {int /*<<< orphan*/  net; } ;

/* Variables and functions */
 int EIO ; 
 unsigned long HZ ; 
 int /*<<< orphan*/  OTP_ADDR1 ; 
 int OTP_ADDR1_15_11 ; 
 int /*<<< orphan*/  OTP_ADDR2 ; 
 int OTP_ADDR2_10_3 ; 
 int /*<<< orphan*/  OTP_CMD_GO ; 
 int OTP_CMD_GO_GO_ ; 
 int /*<<< orphan*/  OTP_FUNC_CMD ; 
 int OTP_FUNC_CMD_READ_ ; 
 int /*<<< orphan*/  OTP_PWR_DN ; 
 int OTP_PWR_DN_PWRDN_N_ ; 
 int /*<<< orphan*/  OTP_RD_DATA ; 
 int /*<<< orphan*/  OTP_STATUS ; 
 int OTP_STATUS_BUSY_ ; 
 unsigned long jiffies ; 
 int FUNC0 (struct lan78xx_net*,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (struct lan78xx_net*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct lan78xx_net *dev, u32 offset,
				u32 length, u8 *data)
{
	int i;
	int ret;
	u32 buf;
	unsigned long timeout;

	ret = FUNC0(dev, OTP_PWR_DN, &buf);

	if (buf & OTP_PWR_DN_PWRDN_N_) {
		/* clear it and wait to be cleared */
		ret = FUNC1(dev, OTP_PWR_DN, 0);

		timeout = jiffies + HZ;
		do {
			FUNC5(1, 10);
			ret = FUNC0(dev, OTP_PWR_DN, &buf);
			if (FUNC3(jiffies, timeout)) {
				FUNC2(dev->net,
					    "timeout on OTP_PWR_DN");
				return -EIO;
			}
		} while (buf & OTP_PWR_DN_PWRDN_N_);
	}

	for (i = 0; i < length; i++) {
		ret = FUNC1(dev, OTP_ADDR1,
					((offset + i) >> 8) & OTP_ADDR1_15_11);
		ret = FUNC1(dev, OTP_ADDR2,
					((offset + i) & OTP_ADDR2_10_3));

		ret = FUNC1(dev, OTP_FUNC_CMD, OTP_FUNC_CMD_READ_);
		ret = FUNC1(dev, OTP_CMD_GO, OTP_CMD_GO_GO_);

		timeout = jiffies + HZ;
		do {
			FUNC4(1);
			ret = FUNC0(dev, OTP_STATUS, &buf);
			if (FUNC3(jiffies, timeout)) {
				FUNC2(dev->net,
					    "timeout on OTP_STATUS");
				return -EIO;
			}
		} while (buf & OTP_STATUS_BUSY_);

		ret = FUNC0(dev, OTP_RD_DATA, &buf);

		data[i] = (u8)(buf & 0xFF);
	}

	return 0;
}