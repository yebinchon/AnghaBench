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
struct brcmf_if {int /*<<< orphan*/  pend_8021x_wait; struct brcmf_pub* drvr; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_WAIT_FOR_8021X_TX ; 
 int /*<<< orphan*/  FUNC0 (struct brcmf_pub*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_if*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC3(struct brcmf_if *ifp)
{
	struct brcmf_pub *drvr = ifp->drvr;
	int err;

	err = FUNC2(ifp->pend_8021x_wait,
				 !FUNC1(ifp),
				 MAX_WAIT_FOR_8021X_TX);

	if (!err)
		FUNC0(drvr, "Timed out waiting for no pending 802.1x packets\n");

	return !err;
}