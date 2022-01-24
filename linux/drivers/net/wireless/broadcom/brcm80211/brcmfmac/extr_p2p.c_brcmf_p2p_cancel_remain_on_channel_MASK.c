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
struct brcmf_if {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WL_P2P_DISC_ST_SCAN ; 
 int /*<<< orphan*/  FUNC0 (struct brcmf_if*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_if*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct brcmf_if *ifp)
{
	if (!ifp)
		return;
	FUNC1(ifp, WL_P2P_DISC_ST_SCAN, 0, 0);
	FUNC0(ifp, NULL, NULL);
}