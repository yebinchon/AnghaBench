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
struct mvpp2_port {int first_rxq; int /*<<< orphan*/  priv; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int MVPP2_CLS_OVERSIZE_RXQ_LOW_BITS ; 
 int MVPP2_CLS_OVERSIZE_RXQ_LOW_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MVPP2_CLS_SWFWD_PCTRL_REG ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC5(struct mvpp2_port *port)
{
	u32 val;

	FUNC4(port->priv, FUNC0(port->id),
		    port->first_rxq & MVPP2_CLS_OVERSIZE_RXQ_LOW_MASK);

	FUNC4(port->priv, FUNC1(port->id),
		    (port->first_rxq >> MVPP2_CLS_OVERSIZE_RXQ_LOW_BITS));

	val = FUNC3(port->priv, MVPP2_CLS_SWFWD_PCTRL_REG);
	val |= FUNC2(port->id);
	FUNC4(port->priv, MVPP2_CLS_SWFWD_PCTRL_REG, val);
}