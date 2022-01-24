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
struct rcar_drif {int /*<<< orphan*/  dmach; } ;

/* Variables and functions */
 int /*<<< orphan*/  RCAR_DRIF_SIIER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rcar_drif*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct rcar_drif *ch)
{
	/* Disable DMA receive interrupt */
	FUNC1(ch, RCAR_DRIF_SIIER, 0x00000000);

	/* Terminate all DMA transfers */
	FUNC0(ch->dmach);
}