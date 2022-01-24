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
struct rtsx_ucr {int /*<<< orphan*/  rsp_buf; int /*<<< orphan*/  pusb_dev; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  EP_BULK_IN ; 
 int FUNC1 (struct rtsx_ucr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct rtsx_ucr *ucr, int rsp_len, int timeout)
{
	if (rsp_len <= 0)
		return -EINVAL;

	rsp_len = FUNC0(rsp_len, 4);

	return FUNC1(ucr,
			FUNC2(ucr->pusb_dev, EP_BULK_IN),
			ucr->rsp_buf, rsp_len, 0, NULL, timeout);
}