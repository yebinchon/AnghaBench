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
struct fimc_is {size_t config_index; int /*<<< orphan*/  slock; struct chain_config* config; } ;
struct chain_config {int /*<<< orphan*/ * p_region_index; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

unsigned int FUNC3(struct fimc_is *is)
{
	struct chain_config *config = &is->config[is->config_index];
	unsigned long flags;
	unsigned int count;

	FUNC1(&is->slock, flags);
	count = FUNC0(config->p_region_index[0]);
	count += FUNC0(config->p_region_index[1]);
	FUNC2(&is->slock, flags);

	return count;
}