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
typedef  scalar_t__ u64 ;
struct mmc_host {scalar_t__ f_max; scalar_t__ f_min; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*,unsigned int) ; 

__attribute__((used)) static int FUNC3(void *data, u64 val)
{
	struct mmc_host *host = data;

	/* We need this check due to input value is u64 */
	if (val != 0 && (val > host->f_max || val < host->f_min))
		return -EINVAL;

	FUNC0(host);
	FUNC2(host, (unsigned int) val);
	FUNC1(host);

	return 0;
}