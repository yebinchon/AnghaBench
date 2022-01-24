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
typedef  int /*<<< orphan*/  u16 ;
struct rtsx_ucr {int /*<<< orphan*/ * rsp_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  MODE_CR ; 
 int /*<<< orphan*/  READ_REG_CMD ; 
 int /*<<< orphan*/  FUNC0 (struct rtsx_ucr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct rtsx_ucr*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_ucr*) ; 
 int FUNC3 (struct rtsx_ucr*,int /*<<< orphan*/ ,int) ; 

int FUNC4(struct rtsx_ucr *ucr, u16 addr, u8 *data)
{
	int ret;

	if (data != NULL)
		*data = 0;

	FUNC2(ucr);
	FUNC0(ucr, READ_REG_CMD, addr, 0, 0);
	ret = FUNC3(ucr, MODE_CR, 100);
	if (ret)
		return ret;

	ret = FUNC1(ucr, 1, 100);
	if (ret)
		return ret;

	if (data != NULL)
		*data = ucr->rsp_buf[0];

	return 0;
}