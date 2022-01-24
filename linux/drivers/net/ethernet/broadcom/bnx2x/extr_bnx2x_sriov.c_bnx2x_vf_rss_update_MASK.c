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
struct bnx2x_virtf {int /*<<< orphan*/  abs_vfid; } ;
struct bnx2x_config_rss_params {int /*<<< orphan*/  ramrod_flags; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_MSG_IOV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RAMROD_COMP_WAIT ; 
 int FUNC1 (struct bnx2x*,struct bnx2x_config_rss_params*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC3(struct bnx2x *bp, struct bnx2x_virtf *vf,
			struct bnx2x_config_rss_params *rss)
{
	FUNC0(BNX2X_MSG_IOV, "vf[%d]\n", vf->abs_vfid);
	FUNC2(RAMROD_COMP_WAIT, &rss->ramrod_flags);
	return FUNC1(bp, rss);
}