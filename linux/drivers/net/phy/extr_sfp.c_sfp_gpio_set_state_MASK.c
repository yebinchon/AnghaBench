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
struct sfp {scalar_t__* gpio; } ;

/* Variables and functions */
 size_t GPIO_RATE_SELECT ; 
 size_t GPIO_TX_DISABLE ; 
 unsigned int SFP_F_PRESENT ; 
 unsigned int SFP_F_RATE_SELECT ; 
 unsigned int SFP_F_TX_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct sfp *sfp, unsigned int state)
{
	if (state & SFP_F_PRESENT) {
		/* If the module is present, drive the signals */
		if (sfp->gpio[GPIO_TX_DISABLE])
			FUNC1(sfp->gpio[GPIO_TX_DISABLE],
					       state & SFP_F_TX_DISABLE);
		if (state & SFP_F_RATE_SELECT)
			FUNC1(sfp->gpio[GPIO_RATE_SELECT],
					       state & SFP_F_RATE_SELECT);
	} else {
		/* Otherwise, let them float to the pull-ups */
		if (sfp->gpio[GPIO_TX_DISABLE])
			FUNC0(sfp->gpio[GPIO_TX_DISABLE]);
		if (state & SFP_F_RATE_SELECT)
			FUNC0(sfp->gpio[GPIO_RATE_SELECT]);
	}
}