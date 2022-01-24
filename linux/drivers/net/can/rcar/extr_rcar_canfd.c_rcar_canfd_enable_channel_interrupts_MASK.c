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
typedef  int u32 ;
struct rcar_canfd_channel {int channel; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int RCANFD_CCTR_ALIE ; 
 int RCANFD_CCTR_BEIE ; 
 int RCANFD_CCTR_BLIE ; 
 int RCANFD_CCTR_BOEIE ; 
 int RCANFD_CCTR_BORIE ; 
 int RCANFD_CCTR_EPIE ; 
 int RCANFD_CCTR_EWIE ; 
 int RCANFD_CCTR_OLIE ; 
 int RCANFD_CCTR_TAIE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct rcar_canfd_channel
						 *priv)
{
	u32 ctr, ch = priv->channel;

	/* Clear any stray error flags */
	FUNC3(priv->base, FUNC1(ch), 0);

	/* Channel interrupts setup */
	ctr = (RCANFD_CCTR_TAIE |
	       RCANFD_CCTR_ALIE | RCANFD_CCTR_BLIE |
	       RCANFD_CCTR_OLIE | RCANFD_CCTR_BORIE |
	       RCANFD_CCTR_BOEIE | RCANFD_CCTR_EPIE |
	       RCANFD_CCTR_EWIE | RCANFD_CCTR_BEIE);
	FUNC2(priv->base, FUNC0(ch), ctr);
}