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
struct xgbe_prv_data {int an_mode; } ;
typedef  enum xgbe_mode { ____Placeholder_xgbe_mode } xgbe_mode ;

/* Variables and functions */
#define  XGBE_AN_MODE_CL37 131 
#define  XGBE_AN_MODE_CL37_SGMII 130 
#define  XGBE_AN_MODE_CL73 129 
#define  XGBE_AN_MODE_CL73_REDRV 128 
 int XGBE_MODE_UNKNOWN ; 
 int FUNC0 (struct xgbe_prv_data*) ; 
 int FUNC1 (struct xgbe_prv_data*) ; 
 int FUNC2 (struct xgbe_prv_data*) ; 
 int FUNC3 (struct xgbe_prv_data*) ; 

__attribute__((used)) static enum xgbe_mode FUNC4(struct xgbe_prv_data *pdata)
{
	switch (pdata->an_mode) {
	case XGBE_AN_MODE_CL73:
		return FUNC2(pdata);
	case XGBE_AN_MODE_CL73_REDRV:
		return FUNC3(pdata);
	case XGBE_AN_MODE_CL37:
		return FUNC0(pdata);
	case XGBE_AN_MODE_CL37_SGMII:
		return FUNC1(pdata);
	default:
		return XGBE_MODE_UNKNOWN;
	}
}