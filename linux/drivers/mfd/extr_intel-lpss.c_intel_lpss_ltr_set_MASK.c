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
struct intel_lpss {int active_ltr; scalar_t__ priv; } ;
struct device {int dummy; } ;
typedef  int s32 ;

/* Variables and functions */
 scalar_t__ LPSS_PRIV_ACTIVELTR ; 
 scalar_t__ LPSS_PRIV_IDLELTR ; 
 int LPSS_PRIV_LTR_REQ ; 
 int LPSS_PRIV_LTR_SCALE_1US ; 
 int LPSS_PRIV_LTR_SCALE_32US ; 
 int LPSS_PRIV_LTR_SCALE_MASK ; 
 int LPSS_PRIV_LTR_VALUE_MASK ; 
 int PM_QOS_LATENCY_ANY ; 
 struct intel_lpss* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_lpss*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct device *dev, s32 val)
{
	struct intel_lpss *lpss = FUNC0(dev);
	u32 ltr;

	/*
	 * Program latency tolerance (LTR) accordingly what has been asked
	 * by the PM QoS layer or disable it in case we were passed
	 * negative value or PM_QOS_LATENCY_ANY.
	 */
	ltr = FUNC2(lpss->priv + LPSS_PRIV_ACTIVELTR);

	if (val == PM_QOS_LATENCY_ANY || val < 0) {
		ltr &= ~LPSS_PRIV_LTR_REQ;
	} else {
		ltr |= LPSS_PRIV_LTR_REQ;
		ltr &= ~LPSS_PRIV_LTR_SCALE_MASK;
		ltr &= ~LPSS_PRIV_LTR_VALUE_MASK;

		if (val > LPSS_PRIV_LTR_VALUE_MASK)
			ltr |= LPSS_PRIV_LTR_SCALE_32US | val >> 5;
		else
			ltr |= LPSS_PRIV_LTR_SCALE_1US | val;
	}

	if (ltr == lpss->active_ltr)
		return;

	FUNC3(ltr, lpss->priv + LPSS_PRIV_ACTIVELTR);
	FUNC3(ltr, lpss->priv + LPSS_PRIV_IDLELTR);

	/* Cache the values into lpss structure */
	FUNC1(lpss);
}