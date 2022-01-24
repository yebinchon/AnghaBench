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
struct mvpp2_port {int nrxqs; int /*<<< orphan*/ * rxqs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mvpp2_port*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct mvpp2_port *port)
{
	int queue;

	for (queue = 0; queue < port->nrxqs; queue++)
		FUNC0(port, port->rxqs[queue]);
}