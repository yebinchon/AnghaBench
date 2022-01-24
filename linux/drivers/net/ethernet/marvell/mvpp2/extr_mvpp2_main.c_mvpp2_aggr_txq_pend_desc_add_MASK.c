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
struct mvpp2_port {int /*<<< orphan*/  priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  MVPP2_AGGR_TXQ_UPDATE_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(struct mvpp2_port *port, int pending)
{
	/* aggregated access - relevant TXQ number is written in TX desc */
	FUNC1(port->priv,
			   FUNC0(port->priv, FUNC2()),
			   MVPP2_AGGR_TXQ_UPDATE_REG, pending);
}