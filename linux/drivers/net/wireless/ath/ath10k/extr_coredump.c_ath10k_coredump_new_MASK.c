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
struct ath10k_fw_crash_data {int /*<<< orphan*/  timestamp; int /*<<< orphan*/  guid; } ;
struct TYPE_2__ {struct ath10k_fw_crash_data* fw_crash_data; } ;
struct ath10k {int /*<<< orphan*/  dump_mutex; TYPE_1__ coredump; } ;

/* Variables and functions */
 scalar_t__ ath10k_coredump_mask ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

struct ath10k_fw_crash_data *FUNC3(struct ath10k *ar)
{
	struct ath10k_fw_crash_data *crash_data = ar->coredump.fw_crash_data;

	FUNC2(&ar->dump_mutex);

	if (ath10k_coredump_mask == 0)
		/* coredump disabled */
		return NULL;

	FUNC0(&crash_data->guid);
	FUNC1(&crash_data->timestamp);

	return crash_data;
}