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
struct sfp {int /*<<< orphan*/  dev; scalar_t__ sm_retries; } ;

/* Variables and functions */
 int /*<<< orphan*/  SFP_S_TX_DISABLE ; 
 int /*<<< orphan*/  SFP_S_TX_FAULT ; 
 int /*<<< orphan*/  T_FAULT_RECOVER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sfp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct sfp *sfp, bool warn)
{
	if (sfp->sm_retries && !--sfp->sm_retries) {
		FUNC0(sfp->dev,
			"module persistently indicates fault, disabling\n");
		FUNC1(sfp, SFP_S_TX_DISABLE, 0);
	} else {
		if (warn)
			FUNC0(sfp->dev, "module transmit fault indicated\n");

		FUNC1(sfp, SFP_S_TX_FAULT, T_FAULT_RECOVER);
	}
}