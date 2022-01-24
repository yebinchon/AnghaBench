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

/* Variables and functions */
 int /*<<< orphan*/  PCIE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  brcmf_pciedrvr ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(void)
{
	int err;

	FUNC0(PCIE, "Enter\n");
	err = FUNC2(&brcmf_pciedrvr);
	if (err)
		FUNC1(NULL, "PCIE driver registration failed, err=%d\n",
			  err);
}