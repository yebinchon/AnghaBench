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
struct sfp {unsigned int state; int /*<<< orphan*/  st_mutex; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int GPIO_MAX ; 
 int /*<<< orphan*/  SFP_E_INSERT ; 
 int /*<<< orphan*/  SFP_E_LOS_HIGH ; 
 int /*<<< orphan*/  SFP_E_LOS_LOW ; 
 int /*<<< orphan*/  SFP_E_REMOVE ; 
 int /*<<< orphan*/  SFP_E_TX_CLEAR ; 
 int /*<<< orphan*/  SFP_E_TX_FAULT ; 
 unsigned int SFP_F_LOS ; 
 unsigned int SFP_F_PRESENT ; 
 unsigned int SFP_F_RATE_SELECT ; 
 unsigned int SFP_F_TX_DISABLE ; 
 unsigned int SFP_F_TX_FAULT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/ * gpio_of_names ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 unsigned int FUNC6 (struct sfp*) ; 
 int /*<<< orphan*/  FUNC7 (struct sfp*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct sfp *sfp)
{
	unsigned int state, i, changed;

	FUNC2(&sfp->st_mutex);
	state = FUNC6(sfp);
	changed = state ^ sfp->state;
	changed &= SFP_F_PRESENT | SFP_F_LOS | SFP_F_TX_FAULT;

	for (i = 0; i < GPIO_MAX; i++)
		if (changed & FUNC0(i))
			FUNC1(sfp->dev, "%s %u -> %u\n", gpio_of_names[i],
				!!(sfp->state & FUNC0(i)), !!(state & FUNC0(i)));

	state |= sfp->state & (SFP_F_TX_DISABLE | SFP_F_RATE_SELECT);
	sfp->state = state;

	FUNC4();
	if (changed & SFP_F_PRESENT)
		FUNC7(sfp, state & SFP_F_PRESENT ?
				SFP_E_INSERT : SFP_E_REMOVE);

	if (changed & SFP_F_TX_FAULT)
		FUNC7(sfp, state & SFP_F_TX_FAULT ?
				SFP_E_TX_FAULT : SFP_E_TX_CLEAR);

	if (changed & SFP_F_LOS)
		FUNC7(sfp, state & SFP_F_LOS ?
				SFP_E_LOS_HIGH : SFP_E_LOS_LOW);
	FUNC5();
	FUNC3(&sfp->st_mutex);
}