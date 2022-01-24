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
struct bcma_drv_cc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCMA_CC_NFLASH_CTL ; 
 int BCMA_CC_NFLASH_CTL_ERR ; 
 int EBUSY ; 
 int NCTL_READY ; 
 int NFLASH_READY_RETRIES ; 
 int FUNC0 (struct bcma_drv_cc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(struct bcma_drv_cc *cc)
{
	int i;

	for (i = 0; i < NFLASH_READY_RETRIES; i++) {
		if (FUNC0(cc, BCMA_CC_NFLASH_CTL) & NCTL_READY) {
			if (FUNC0(cc, BCMA_CC_NFLASH_CTL) &
			    BCMA_CC_NFLASH_CTL_ERR) {
				FUNC1("Error on polling\n");
				return -EBUSY;
			} else {
				return 0;
			}
		}
	}

	FUNC1("Polling timeout!\n");
	return -EBUSY;
}