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
struct lpddr2_timings {int /*<<< orphan*/  tDQSCK_max_derated; int /*<<< orphan*/  tRAS_max_ns; int /*<<< orphan*/  tZQinit; int /*<<< orphan*/  tZQCL; int /*<<< orphan*/  tZQCS; int /*<<< orphan*/  tFAW; int /*<<< orphan*/  tDQSCK_max; int /*<<< orphan*/  tCKESR; int /*<<< orphan*/  tRTP; int /*<<< orphan*/  tXP; int /*<<< orphan*/  tWTR; int /*<<< orphan*/  tRRD; int /*<<< orphan*/  tRAS_min; int /*<<< orphan*/  tWR; int /*<<< orphan*/  tRCD; int /*<<< orphan*/  tRPab; int /*<<< orphan*/  min_freq; int /*<<< orphan*/  max_freq; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct device_node*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(struct device_node *np,
		struct lpddr2_timings *tim)
{
	int ret;

	ret = FUNC0(np, "max-freq", &tim->max_freq);
	ret |= FUNC0(np, "min-freq", &tim->min_freq);
	ret |= FUNC0(np, "tRPab", &tim->tRPab);
	ret |= FUNC0(np, "tRCD", &tim->tRCD);
	ret |= FUNC0(np, "tWR", &tim->tWR);
	ret |= FUNC0(np, "tRAS-min", &tim->tRAS_min);
	ret |= FUNC0(np, "tRRD", &tim->tRRD);
	ret |= FUNC0(np, "tWTR", &tim->tWTR);
	ret |= FUNC0(np, "tXP", &tim->tXP);
	ret |= FUNC0(np, "tRTP", &tim->tRTP);
	ret |= FUNC0(np, "tCKESR", &tim->tCKESR);
	ret |= FUNC0(np, "tDQSCK-max", &tim->tDQSCK_max);
	ret |= FUNC0(np, "tFAW", &tim->tFAW);
	ret |= FUNC0(np, "tZQCS", &tim->tZQCS);
	ret |= FUNC0(np, "tZQCL", &tim->tZQCL);
	ret |= FUNC0(np, "tZQinit", &tim->tZQinit);
	ret |= FUNC0(np, "tRAS-max-ns", &tim->tRAS_max_ns);
	ret |= FUNC0(np, "tDQSCK-max-derated",
		&tim->tDQSCK_max_derated);

	return ret;
}