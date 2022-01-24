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
 int EBUSY ; 
 int /*<<< orphan*/  OTP_CTRL ; 
 int OTP_CTRL_OTP_CMD_START ; 
 int /*<<< orphan*/  OTP_STATUS ; 
 int OTP_STATUS_CMD_DONE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct tg3 *tp, u32 cmd)
{
	int i;
	u32 val;

	FUNC1(OTP_CTRL, cmd | OTP_CTRL_OTP_CMD_START);
	FUNC1(OTP_CTRL, cmd);

	/* Wait for up to 1 ms for command to execute. */
	for (i = 0; i < 100; i++) {
		val = FUNC0(OTP_STATUS);
		if (val & OTP_STATUS_CMD_DONE)
			break;
		FUNC2(10);
	}

	return (val & OTP_STATUS_CMD_DONE) ? 0 : -EBUSY;
}