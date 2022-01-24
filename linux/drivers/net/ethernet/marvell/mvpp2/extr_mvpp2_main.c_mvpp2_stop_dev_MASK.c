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
struct mvpp2_port {int nqvecs; int /*<<< orphan*/  comphy; scalar_t__ phylink; TYPE_1__* qvecs; } ;
struct TYPE_2__ {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mvpp2_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct mvpp2_port *port)
{
	int i;

	/* Disable interrupts on all threads */
	FUNC0(port);

	for (i = 0; i < port->nqvecs; i++)
		FUNC1(&port->qvecs[i].napi);

	if (port->phylink)
		FUNC3(port->phylink);
	FUNC2(port->comphy);
}