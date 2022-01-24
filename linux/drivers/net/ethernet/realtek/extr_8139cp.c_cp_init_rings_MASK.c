#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct cp_private {TYPE_1__* tx_opts; TYPE_1__* tx_ring; } ;
struct cp_desc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  opts1; } ;

/* Variables and functions */
 int CP_TX_RING_SIZE ; 
 int /*<<< orphan*/  RingEnd ; 
 int /*<<< orphan*/  FUNC0 (struct cp_private*) ; 
 int FUNC1 (struct cp_private*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4 (struct cp_private *cp)
{
	FUNC3(cp->tx_ring, 0, sizeof(struct cp_desc) * CP_TX_RING_SIZE);
	cp->tx_ring[CP_TX_RING_SIZE - 1].opts1 = FUNC2(RingEnd);
	FUNC3(cp->tx_opts, 0, sizeof(cp->tx_opts));

	FUNC0(cp);

	return FUNC1 (cp);
}