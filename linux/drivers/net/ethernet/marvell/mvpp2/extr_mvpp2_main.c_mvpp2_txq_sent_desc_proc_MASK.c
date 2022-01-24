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
struct mvpp2_tx_queue {int /*<<< orphan*/  id; } ;
struct mvpp2_port {int /*<<< orphan*/  priv; } ;

/* Variables and functions */
 int MVPP2_TRANSMITTED_COUNT_MASK ; 
 int MVPP2_TRANSMITTED_COUNT_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static inline int FUNC4(struct mvpp2_port *port,
					   struct mvpp2_tx_queue *txq)
{
	u32 val;

	/* Reading status reg resets transmitted descriptor counter */
	val = FUNC2(port->priv,
					FUNC1(port->priv, FUNC3()),
					FUNC0(txq->id));

	return (val & MVPP2_TRANSMITTED_COUNT_MASK) >>
		MVPP2_TRANSMITTED_COUNT_OFFSET;
}