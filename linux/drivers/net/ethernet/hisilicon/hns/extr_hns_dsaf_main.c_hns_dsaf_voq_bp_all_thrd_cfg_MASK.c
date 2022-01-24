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
typedef  int u32 ;
struct dsaf_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSAF_VOQ_BP_ALL_DOWNTHRD_M ; 
 int /*<<< orphan*/  DSAF_VOQ_BP_ALL_DOWNTHRD_S ; 
 scalar_t__ DSAF_VOQ_BP_ALL_THRD_0_REG ; 
 int /*<<< orphan*/  DSAF_VOQ_BP_ALL_UPTHRD_M ; 
 int /*<<< orphan*/  DSAF_VOQ_BP_ALL_UPTHRD_S ; 
 int DSAF_VOQ_NUM ; 
 int DSAF_XGE_NUM ; 
 int FUNC0 (struct dsaf_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dsaf_device*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC3(struct dsaf_device *dsaf_dev)
{
	u32 voq_bp_all_thrd;
	u32 i;

	for (i = 0; i < DSAF_VOQ_NUM; i++) {
		voq_bp_all_thrd = FUNC0(
			dsaf_dev, DSAF_VOQ_BP_ALL_THRD_0_REG + 0x40 * i);
		if (i < DSAF_XGE_NUM) {
			FUNC1(voq_bp_all_thrd,
				       DSAF_VOQ_BP_ALL_DOWNTHRD_M,
				       DSAF_VOQ_BP_ALL_DOWNTHRD_S, 930);
			FUNC1(voq_bp_all_thrd,
				       DSAF_VOQ_BP_ALL_UPTHRD_M,
				       DSAF_VOQ_BP_ALL_UPTHRD_S, 950);
		} else {
			FUNC1(voq_bp_all_thrd,
				       DSAF_VOQ_BP_ALL_DOWNTHRD_M,
				       DSAF_VOQ_BP_ALL_DOWNTHRD_S, 220);
			FUNC1(voq_bp_all_thrd,
				       DSAF_VOQ_BP_ALL_UPTHRD_M,
				       DSAF_VOQ_BP_ALL_UPTHRD_S, 230);
		}
		FUNC2(
			dsaf_dev, DSAF_VOQ_BP_ALL_THRD_0_REG + 0x40 * i,
			voq_bp_all_thrd);
	}
}