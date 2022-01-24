#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
typedef  int /*<<< orphan*/  time64_t ;
struct tm {int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; } ;
struct bnxt_coredump_record {int high_version; scalar_t__ ioctl_high_version; scalar_t__ ioctl_low_version; void* coredump_status; scalar_t__ asic_id2; void* asic_id1; void* end_utc_bias; void* end_second; void* end_minute; void* end_hour; void* end_day; void* end_month; void* end_year; int /*<<< orphan*/  os_name; void* os_ver_minor; void* os_ver_major; void* total_segments; int /*<<< orphan*/  commandline; void* utc_bias; void* second; void* minute; void* hour; void* day; void* month; void* year; int /*<<< orphan*/  system_name; scalar_t__ asic_state; scalar_t__ low_version; scalar_t__ flags; int /*<<< orphan*/  signature; } ;
struct TYPE_4__ {int chip_rev; int chip_metal; } ;
struct bnxt {int chip_num; TYPE_1__ ver_resp; } ;
typedef  int s16 ;
struct TYPE_6__ {int tz_minuteswest; } ;
struct TYPE_5__ {int /*<<< orphan*/  sysname; int /*<<< orphan*/  release; int /*<<< orphan*/  nodename; } ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bnxt_coredump_record*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_3__ sys_tz ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tm*) ; 
 TYPE_2__* FUNC9 () ; 

__attribute__((used)) static void
FUNC10(struct bnxt *bp, struct bnxt_coredump_record *record,
			  time64_t start, s16 start_utc, u16 total_segs,
			  int status)
{
	time64_t end = FUNC2();
	u32 os_ver_major = 0, os_ver_minor = 0;
	struct tm tm;

	FUNC8(start, 0, &tm);
	FUNC4(record, 0, sizeof(*record));
	FUNC3(record->signature, "cOrE", 4);
	record->flags = 0;
	record->low_version = 0;
	record->high_version = 1;
	record->asic_state = 0;
	FUNC7(record->system_name, FUNC9()->nodename,
		sizeof(record->system_name));
	record->year = FUNC0(tm.tm_year + 1900);
	record->month = FUNC0(tm.tm_mon + 1);
	record->day = FUNC0(tm.tm_mday);
	record->hour = FUNC0(tm.tm_hour);
	record->minute = FUNC0(tm.tm_min);
	record->second = FUNC0(tm.tm_sec);
	record->utc_bias = FUNC0(start_utc);
	FUNC6(record->commandline, "ethtool -w");
	record->total_segments = FUNC1(total_segs);

	FUNC5(FUNC9()->release, "%u.%u", &os_ver_major, &os_ver_minor);
	record->os_ver_major = FUNC1(os_ver_major);
	record->os_ver_minor = FUNC1(os_ver_minor);

	FUNC7(record->os_name, FUNC9()->sysname, 32);
	FUNC8(end, 0, &tm);
	record->end_year = FUNC0(tm.tm_year + 1900);
	record->end_month = FUNC0(tm.tm_mon + 1);
	record->end_day = FUNC0(tm.tm_mday);
	record->end_hour = FUNC0(tm.tm_hour);
	record->end_minute = FUNC0(tm.tm_min);
	record->end_second = FUNC0(tm.tm_sec);
	record->end_utc_bias = FUNC0(sys_tz.tz_minuteswest * 60);
	record->asic_id1 = FUNC1(bp->chip_num << 16 |
				       bp->ver_resp.chip_rev << 8 |
				       bp->ver_resp.chip_metal);
	record->asic_id2 = 0;
	record->coredump_status = FUNC1(status);
	record->ioctl_low_version = 0;
	record->ioctl_high_version = 0;
}