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
struct mv643xx_eth_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RX_DISCARD_FRAME_CNT ; 
 int /*<<< orphan*/  RX_OVERRUN_FRAME_CNT ; 
 int /*<<< orphan*/  FUNC0 (struct mv643xx_eth_private*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mv643xx_eth_private*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct mv643xx_eth_private *mp)
{
	int i;

	for (i = 0; i < 0x80; i += 4)
		FUNC0(mp, i);

	/* Clear non MIB hw counters also */
	FUNC1(mp, RX_DISCARD_FRAME_CNT);
	FUNC1(mp, RX_OVERRUN_FRAME_CNT);
}