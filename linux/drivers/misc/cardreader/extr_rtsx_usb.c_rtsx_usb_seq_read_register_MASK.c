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
typedef  int u16 ;
struct rtsx_ucr {int /*<<< orphan*/  pusb_dev; int /*<<< orphan*/ * cmd_buf; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  EP_BULK_IN ; 
 int /*<<< orphan*/  EP_BULK_OUT ; 
 int /*<<< orphan*/  SEQ_READ ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (struct rtsx_ucr*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_ucr*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct rtsx_ucr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct rtsx_ucr *ucr,
		u16 addr, u16 len, u8 *data)
{
	int i, ret;
	u16 rsp_len = FUNC0(len, 4);
	u16 res_len = len - rsp_len;

	if (!data)
		return -EINVAL;

	/* 4-byte aligned part */
	if (rsp_len) {
		FUNC2(ucr, addr, len, SEQ_READ);
		ret = FUNC3(ucr,
				FUNC5(ucr->pusb_dev, EP_BULK_OUT),
				ucr->cmd_buf, 12, 0, NULL, 100);
		if (ret)
			return ret;

		ret = FUNC3(ucr,
				FUNC4(ucr->pusb_dev, EP_BULK_IN),
				data, rsp_len, 0, NULL, 100);
		if (ret)
			return ret;
	}

	/* unaligned part */
	for (i = 0; i < res_len; i++) {
		ret = FUNC1(ucr, addr + rsp_len + i,
				data + rsp_len + i);
		if (ret)
			return ret;
	}

	return 0;
}