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
typedef  int u8 ;
struct bnx2x_credit_pool_obj {int dummy; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int BNX2X_CAM_SIZE_EMUL ; 
 int BNX2X_MAX_EMUL_MULTI ; 
 int BNX2X_MAX_MULTICAST ; 
 scalar_t__ FUNC0 (struct bnx2x*) ; 
 scalar_t__ FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*) ; 
 int MAX_MAC_CREDIT_E1 ; 
 int MAX_MAC_CREDIT_E1H ; 
 int FUNC3 (struct bnx2x*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x_credit_pool_obj*,int,int) ; 

void FUNC5(struct bnx2x *bp,
				struct bnx2x_credit_pool_obj *p, u8 func_id,
				u8 func_num)
{
/* TODO: this will be defined in consts as well... */
#define BNX2X_CAM_SIZE_EMUL 5

	int cam_sz;

	if (FUNC0(bp)) {
		/* In E1, Multicast is saved in cam... */
		if (!FUNC2(bp))
			cam_sz = (MAX_MAC_CREDIT_E1 / 2) - BNX2X_MAX_MULTICAST;
		else
			cam_sz = BNX2X_CAM_SIZE_EMUL - BNX2X_MAX_EMUL_MULTI;

		FUNC4(p, func_id * cam_sz, cam_sz);

	} else if (FUNC1(bp)) {
		/* CAM credit is equaly divided between all active functions
		 * on the PORT!.
		 */
		if ((func_num > 0)) {
			if (!FUNC2(bp))
				cam_sz = (MAX_MAC_CREDIT_E1H / (2*func_num));
			else
				cam_sz = BNX2X_CAM_SIZE_EMUL;
			FUNC4(p, func_id * cam_sz, cam_sz);
		} else {
			/* this should never happen! Block MAC operations. */
			FUNC4(p, 0, 0);
		}

	} else {

		/* CAM credit is equaly divided between all active functions
		 * on the PATH.
		 */
		if (func_num > 0) {
			if (!FUNC2(bp))
				cam_sz = FUNC3(bp, func_num);
			else
				cam_sz = BNX2X_CAM_SIZE_EMUL;

			/* No need for CAM entries handling for 57712 and
			 * newer.
			 */
			FUNC4(p, -1, cam_sz);
		} else {
			/* this should never happen! Block MAC operations. */
			FUNC4(p, 0, 0);
		}
	}
}