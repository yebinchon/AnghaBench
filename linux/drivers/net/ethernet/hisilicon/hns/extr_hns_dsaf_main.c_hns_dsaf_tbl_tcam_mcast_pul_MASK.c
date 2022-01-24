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
typedef  int /*<<< orphan*/  u32 ;
struct dsaf_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSAF_TBL_PUL_0_REG ; 
 int /*<<< orphan*/  DSAF_TBL_PUL_MCAST_VLD_S ; 
 int /*<<< orphan*/  FUNC0 (struct dsaf_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dsaf_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct dsaf_device *dsaf_dev)
{
	u32 o_tbl_pul;

	o_tbl_pul = FUNC0(dsaf_dev, DSAF_TBL_PUL_0_REG);
	FUNC1(o_tbl_pul, DSAF_TBL_PUL_MCAST_VLD_S, 1);
	FUNC2(dsaf_dev, DSAF_TBL_PUL_0_REG, o_tbl_pul);
	FUNC1(o_tbl_pul, DSAF_TBL_PUL_MCAST_VLD_S, 0);
	FUNC2(dsaf_dev, DSAF_TBL_PUL_0_REG, o_tbl_pul);
}