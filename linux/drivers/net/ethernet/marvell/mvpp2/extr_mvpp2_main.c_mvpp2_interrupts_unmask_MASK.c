#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct mvpp2_port {int /*<<< orphan*/  id; TYPE_1__* priv; scalar_t__ has_tx_irqs; } ;
struct TYPE_3__ {scalar_t__ nthreads; int /*<<< orphan*/  hw_version; } ;

/* Variables and functions */
 int MVPP2_CAUSE_MISC_SUM_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int MVPP2_CAUSE_TXQ_OCCUP_DESC_ALL_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 () ; 

__attribute__((used)) static void FUNC5(void *arg)
{
	struct mvpp2_port *port = arg;
	u32 val;

	/* If the thread isn't used, don't do anything */
	if (FUNC4() > port->priv->nthreads)
		return;

	val = MVPP2_CAUSE_MISC_SUM_MASK |
		FUNC0(port->priv->hw_version);
	if (port->has_tx_irqs)
		val |= MVPP2_CAUSE_TXQ_OCCUP_DESC_ALL_MASK;

	FUNC3(port->priv,
			   FUNC2(port->priv, FUNC4()),
			   FUNC1(port->id), val);
}