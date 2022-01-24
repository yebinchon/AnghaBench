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
struct xgbe_prv_data {int dummy; } ;
typedef  enum xgbe_mode { ____Placeholder_xgbe_mode } xgbe_mode ;

/* Variables and functions */
#define  XGBE_MODE_KR 130 
#define  XGBE_MODE_KX_1000 129 
#define  XGBE_MODE_KX_2500 128 
 int /*<<< orphan*/  FUNC0 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct xgbe_prv_data*) ; 

__attribute__((used)) static void FUNC3(struct xgbe_prv_data *pdata, enum xgbe_mode mode)
{
	switch (mode) {
	case XGBE_MODE_KX_1000:
		FUNC1(pdata);
		break;
	case XGBE_MODE_KX_2500:
		FUNC2(pdata);
		break;
	case XGBE_MODE_KR:
		FUNC0(pdata);
		break;
	default:
		break;
	}
}