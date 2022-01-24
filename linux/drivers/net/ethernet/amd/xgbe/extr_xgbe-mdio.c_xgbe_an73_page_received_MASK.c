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
struct xgbe_prv_data {unsigned long an_start; int kr_state; int kx_state; int /*<<< orphan*/  netdev; } ;
typedef  enum xgbe_rx { ____Placeholder_xgbe_rx } xgbe_rx ;
typedef  enum xgbe_an { ____Placeholder_xgbe_an } xgbe_an ;

/* Variables and functions */
 int XGBE_AN_ERROR ; 
 int /*<<< orphan*/  XGBE_AN_MS_TIMEOUT ; 
#define  XGBE_RX_BPA 129 
#define  XGBE_RX_XNP 128 
 void* jiffies ; 
 int /*<<< orphan*/  link ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (void*,unsigned long) ; 
 int FUNC3 (struct xgbe_prv_data*,int*) ; 
 int FUNC4 (struct xgbe_prv_data*,int*) ; 
 scalar_t__ FUNC5 (struct xgbe_prv_data*) ; 

__attribute__((used)) static enum xgbe_an FUNC6(struct xgbe_prv_data *pdata)
{
	enum xgbe_rx *state;
	unsigned long an_timeout;
	enum xgbe_an ret;

	if (!pdata->an_start) {
		pdata->an_start = jiffies;
	} else {
		an_timeout = pdata->an_start +
			     FUNC0(XGBE_AN_MS_TIMEOUT);
		if (FUNC2(jiffies, an_timeout)) {
			/* Auto-negotiation timed out, reset state */
			pdata->kr_state = XGBE_RX_BPA;
			pdata->kx_state = XGBE_RX_BPA;

			pdata->an_start = jiffies;

			FUNC1(pdata, link, pdata->netdev,
				  "CL73 AN timed out, resetting state\n");
		}
	}

	state = FUNC5(pdata) ? &pdata->kr_state
				       : &pdata->kx_state;

	switch (*state) {
	case XGBE_RX_BPA:
		ret = FUNC3(pdata, state);
		break;

	case XGBE_RX_XNP:
		ret = FUNC4(pdata, state);
		break;

	default:
		ret = XGBE_AN_ERROR;
	}

	return ret;
}