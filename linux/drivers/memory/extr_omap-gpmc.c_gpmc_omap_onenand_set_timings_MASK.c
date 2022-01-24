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
struct gpmc_timings {int dummy; } ;
struct gpmc_settings {int /*<<< orphan*/  sync_write; int /*<<< orphan*/  sync_read; int /*<<< orphan*/  burst_len; } ;
struct gpmc_onenand_info {int /*<<< orphan*/  burst_len; int /*<<< orphan*/  sync_write; int /*<<< orphan*/  sync_read; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int FUNC0 (int,struct gpmc_settings*) ; 
 int FUNC1 (int,struct gpmc_timings*,struct gpmc_settings*) ; 
 int /*<<< orphan*/  FUNC2 (struct gpmc_timings*,struct gpmc_settings*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct gpmc_settings*) ; 

int FUNC4(struct device *dev, int cs, int freq,
				  int latency,
				  struct gpmc_onenand_info *info)
{
	int ret;
	struct gpmc_timings gpmc_t;
	struct gpmc_settings gpmc_s;

	FUNC3(dev->of_node, &gpmc_s);

	info->sync_read = gpmc_s.sync_read;
	info->sync_write = gpmc_s.sync_write;
	info->burst_len = gpmc_s.burst_len;

	if (!gpmc_s.sync_read && !gpmc_s.sync_write)
		return 0;

	FUNC2(&gpmc_t, &gpmc_s, freq, latency);

	ret = FUNC0(cs, &gpmc_s);
	if (ret < 0)
		return ret;

	return FUNC1(cs, &gpmc_t, &gpmc_s);
}