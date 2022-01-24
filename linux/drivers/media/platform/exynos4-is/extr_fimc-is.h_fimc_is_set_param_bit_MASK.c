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
struct fimc_is {size_t config_index; struct chain_config* config; } ;
struct chain_config {int /*<<< orphan*/ * p_region_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC1(struct fimc_is *is, int num)
{
	struct chain_config *cfg = &is->config[is->config_index];

	FUNC0(num, &cfg->p_region_index[0]);
}