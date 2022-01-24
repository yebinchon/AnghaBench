#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct TYPE_2__ {scalar_t__* non_collect_ts_start; } ;
struct iwl_fw_runtime {TYPE_1__ dump; } ;

/* Variables and functions */
 scalar_t__ jiffies ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 unsigned long FUNC1 (size_t) ; 

__attribute__((used)) static inline bool
FUNC2(struct iwl_fw_runtime *fwrt, u32 id, u32 dis_usec)
{
	unsigned long wind_jiff = FUNC1(dis_usec);

	/* If this is the first event checked, jump to update start ts */
	if (fwrt->dump.non_collect_ts_start[id] &&
	    (FUNC0(fwrt->dump.non_collect_ts_start[id] + wind_jiff,
			jiffies)))
		return true;

	fwrt->dump.non_collect_ts_start[id] = jiffies;
	return false;
}