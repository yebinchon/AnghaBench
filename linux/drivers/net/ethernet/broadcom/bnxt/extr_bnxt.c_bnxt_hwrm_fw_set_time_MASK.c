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
typedef  int /*<<< orphan*/  time64_t ;
struct tm {int /*<<< orphan*/  tm_sec; int /*<<< orphan*/  tm_min; int /*<<< orphan*/  tm_hour; int /*<<< orphan*/  tm_mday; scalar_t__ tm_mon; scalar_t__ tm_year; } ;
struct hwrm_fw_set_time_input {int /*<<< orphan*/  second; int /*<<< orphan*/  minute; int /*<<< orphan*/  hour; int /*<<< orphan*/  day; scalar_t__ month; int /*<<< orphan*/  year; int /*<<< orphan*/  member_0; } ;
struct bnxt {int hwrm_spec_code; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bnxt*) ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  HWRM_CMD_TIMEOUT ; 
 int /*<<< orphan*/  HWRM_FW_SET_TIME ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt*,struct hwrm_fw_set_time_input*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (struct bnxt*,struct hwrm_fw_set_time_input*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tm*) ; 

int FUNC6(struct bnxt *bp)
{
	struct hwrm_fw_set_time_input req = {0};
	struct tm tm;
	time64_t now = FUNC4();

	if ((FUNC0(bp) && bp->hwrm_spec_code < 0x10901) ||
	    bp->hwrm_spec_code < 0x10400)
		return -EOPNOTSUPP;

	FUNC5(now, 0, &tm);
	FUNC1(bp, &req, HWRM_FW_SET_TIME, -1, -1);
	req.year = FUNC2(1900 + tm.tm_year);
	req.month = 1 + tm.tm_mon;
	req.day = tm.tm_mday;
	req.hour = tm.tm_hour;
	req.minute = tm.tm_min;
	req.second = tm.tm_sec;
	return FUNC3(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
}