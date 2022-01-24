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
struct brcmf_pub {int dummy; } ;
struct brcmf_if {int /*<<< orphan*/  vif; struct brcmf_pub* drvr; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  INFO ; 
 int /*<<< orphan*/  FUNC0 (struct brcmf_pub*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC2 (struct brcmf_if*,char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct brcmf_if *ifp, int mpc)
{
	struct brcmf_pub *drvr = ifp->drvr;
	s32 err = 0;

	if (FUNC3(ifp->vif)) {
		err = FUNC2(ifp, "mpc", mpc);
		if (err) {
			FUNC0(drvr, "fail to set mpc\n");
			return;
		}
		FUNC1(INFO, "MPC : %d\n", mpc);
	}
}