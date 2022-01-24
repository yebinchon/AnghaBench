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
typedef  scalar_t__ u32 ;
struct mvpp2_port {int /*<<< orphan*/  id; TYPE_1__* priv; int /*<<< orphan*/  tx_time_coal; } ;
struct TYPE_2__ {unsigned long tclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MVPP2_MAX_ISR_TX_THRESHOLD ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,unsigned long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct mvpp2_port *port)
{
	unsigned long freq = port->priv->tclk;
	u32 val = FUNC2(port->tx_time_coal, freq);

	if (val > MVPP2_MAX_ISR_TX_THRESHOLD) {
		port->tx_time_coal =
			FUNC1(MVPP2_MAX_ISR_TX_THRESHOLD, freq);

		/* re-evaluate to get actual register value */
		val = FUNC2(port->tx_time_coal, freq);
	}

	FUNC3(port->priv, FUNC0(port->id), val);
}