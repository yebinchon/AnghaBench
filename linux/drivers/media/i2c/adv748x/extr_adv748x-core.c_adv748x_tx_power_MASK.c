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
struct adv748x_csi2 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADV748X_CSI_FS_AS_LS ; 
 int ADV748X_CSI_FS_AS_LS_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (struct adv748x_csi2*) ; 
 int FUNC2 (struct adv748x_csi2*) ; 
 int /*<<< orphan*/  FUNC3 (struct adv748x_csi2*) ; 
 int FUNC4 (struct adv748x_csi2*,int /*<<< orphan*/ ) ; 

int FUNC5(struct adv748x_csi2 *tx, bool on)
{
	int val;

	if (!FUNC3(tx))
		return 0;

	val = FUNC4(tx, ADV748X_CSI_FS_AS_LS);
	if (val < 0)
		return val;

	/*
	 * This test against BIT(6) is not documented by the datasheet, but was
	 * specified in the downstream driver.
	 * Track with a WARN_ONCE to determine if it is ever set by HW.
	 */
	FUNC0((on && val & ADV748X_CSI_FS_AS_LS_UNKNOWN),
			"Enabling with unknown bit set");

	return on ? FUNC2(tx) : FUNC1(tx);
}