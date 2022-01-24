#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  (* an_post ) (struct xgbe_prv_data*) ;} ;
struct TYPE_4__ {TYPE_1__ phy_impl; } ;
struct xgbe_prv_data {int an_state; int an_int; int parallel_detect; int an_result; int /*<<< orphan*/  netdev; TYPE_2__ phy_if; scalar_t__ an_start; void* kx_state; void* kr_state; int /*<<< orphan*/  an_supported; } ;
typedef  enum xgbe_an { ____Placeholder_xgbe_an } xgbe_an ;

/* Variables and functions */
 int XGBE_AN_CL73_INC_LINK ; 
 int XGBE_AN_CL73_INT_CMPLT ; 
 int XGBE_AN_CL73_PG_RCV ; 
#define  XGBE_AN_COMPLETE 132 
 void* XGBE_AN_ERROR ; 
#define  XGBE_AN_INCOMPAT_LINK 131 
#define  XGBE_AN_NO_LINK 130 
#define  XGBE_AN_PAGE_RECEIVED 129 
#define  XGBE_AN_READY 128 
 void* XGBE_RX_BPA ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct xgbe_prv_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct xgbe_prv_data*) ; 
 int FUNC5 (struct xgbe_prv_data*) ; 
 int FUNC6 (struct xgbe_prv_data*) ; 
 char* FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct xgbe_prv_data *pdata)
{
	enum xgbe_an cur_state = pdata->an_state;

	if (!pdata->an_int)
		return;

next_int:
	if (pdata->an_int & XGBE_AN_CL73_PG_RCV) {
		pdata->an_state = XGBE_AN_PAGE_RECEIVED;
		pdata->an_int &= ~XGBE_AN_CL73_PG_RCV;
	} else if (pdata->an_int & XGBE_AN_CL73_INC_LINK) {
		pdata->an_state = XGBE_AN_INCOMPAT_LINK;
		pdata->an_int &= ~XGBE_AN_CL73_INC_LINK;
	} else if (pdata->an_int & XGBE_AN_CL73_INT_CMPLT) {
		pdata->an_state = XGBE_AN_COMPLETE;
		pdata->an_int &= ~XGBE_AN_CL73_INT_CMPLT;
	} else {
		pdata->an_state = XGBE_AN_ERROR;
	}

again:
	FUNC1(pdata, link, pdata->netdev, "CL73 AN %s\n",
		  FUNC7(pdata->an_state));

	cur_state = pdata->an_state;

	switch (pdata->an_state) {
	case XGBE_AN_READY:
		pdata->an_supported = 0;
		break;

	case XGBE_AN_PAGE_RECEIVED:
		pdata->an_state = FUNC6(pdata);
		pdata->an_supported++;
		break;

	case XGBE_AN_INCOMPAT_LINK:
		pdata->an_supported = 0;
		pdata->parallel_detect = 0;
		pdata->an_state = FUNC5(pdata);
		break;

	case XGBE_AN_COMPLETE:
		pdata->parallel_detect = pdata->an_supported ? 0 : 1;
		FUNC1(pdata, link, pdata->netdev, "%s successful\n",
			  pdata->an_supported ? "Auto negotiation"
					      : "Parallel detection");
		break;

	case XGBE_AN_NO_LINK:
		break;

	default:
		pdata->an_state = XGBE_AN_ERROR;
	}

	if (pdata->an_state == XGBE_AN_NO_LINK) {
		pdata->an_int = 0;
		FUNC3(pdata);
	} else if (pdata->an_state == XGBE_AN_ERROR) {
		FUNC0(pdata->netdev,
			   "error during auto-negotiation, state=%u\n",
			   cur_state);

		pdata->an_int = 0;
		FUNC3(pdata);
	}

	if (pdata->an_state >= XGBE_AN_COMPLETE) {
		pdata->an_result = pdata->an_state;
		pdata->an_state = XGBE_AN_READY;
		pdata->kr_state = XGBE_RX_BPA;
		pdata->kx_state = XGBE_RX_BPA;
		pdata->an_start = 0;

		if (pdata->phy_if.phy_impl.an_post)
			pdata->phy_if.phy_impl.an_post(pdata);

		FUNC1(pdata, link, pdata->netdev, "CL73 AN result: %s\n",
			  FUNC7(pdata->an_result));
	}

	if (cur_state != pdata->an_state)
		goto again;

	if (pdata->an_int)
		goto next_int;

	FUNC4(pdata);
}