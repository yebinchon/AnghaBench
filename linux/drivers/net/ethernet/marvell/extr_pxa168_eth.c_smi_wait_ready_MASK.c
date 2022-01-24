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
struct pxa168_eth_private {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int PHY_WAIT_ITERATIONS ; 
 int /*<<< orphan*/  SMI ; 
 int SMI_BUSY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct pxa168_eth_private*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct pxa168_eth_private *pep)
{
	int i = 0;

	/* wait for the SMI register to become available */
	for (i = 0; FUNC1(pep, SMI) & SMI_BUSY; i++) {
		if (i == PHY_WAIT_ITERATIONS)
			return -ETIMEDOUT;
		FUNC0(10);
	}

	return 0;
}