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
struct tg3 {int dummy; } ;

/* Variables and functions */
 int APE_OTP_ADDR_CPU_ENABLE ; 
 int APE_OTP_CTRL_CMD_RD ; 
 int APE_OTP_CTRL_PROG_EN ; 
 int APE_OTP_CTRL_START ; 
 int APE_OTP_STATUS_CMD_DONE ; 
 int EBUSY ; 
 int /*<<< orphan*/  TG3_APE_OTP_ADDR ; 
 int /*<<< orphan*/  TG3_APE_OTP_CTRL ; 
 int /*<<< orphan*/  TG3_APE_OTP_RD_DATA ; 
 int /*<<< orphan*/  TG3_APE_OTP_STATUS ; 
 int FUNC0 (struct tg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tg3*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct tg3*) ; 
 int /*<<< orphan*/  FUNC3 (struct tg3*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct tg3 *tp, u32 offset, u32 *val)
{
	int i, err;
	u32 val2, off = offset * 8;

	err = FUNC2(tp);
	if (err)
		return err;

	FUNC1(tp, TG3_APE_OTP_ADDR, off | APE_OTP_ADDR_CPU_ENABLE);
	FUNC1(tp, TG3_APE_OTP_CTRL, APE_OTP_CTRL_PROG_EN |
			APE_OTP_CTRL_CMD_RD | APE_OTP_CTRL_START);
	FUNC0(tp, TG3_APE_OTP_CTRL);
	FUNC4(10);

	for (i = 0; i < 100; i++) {
		val2 = FUNC0(tp, TG3_APE_OTP_STATUS);
		if (val2 & APE_OTP_STATUS_CMD_DONE) {
			*val = FUNC0(tp, TG3_APE_OTP_RD_DATA);
			break;
		}
		FUNC4(10);
	}

	FUNC1(tp, TG3_APE_OTP_CTRL, 0);

	FUNC3(tp);
	if (val2 & APE_OTP_STATUS_CMD_DONE)
		return 0;

	return -EBUSY;
}