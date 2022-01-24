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
struct port {TYPE_1__* plat; int /*<<< orphan*/  id; } ;
struct TYPE_2__ {int /*<<< orphan*/  txreadyq; int /*<<< orphan*/  rxq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TXDONE_QUEUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ports_open ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct port *port)
{
	FUNC2(FUNC0(port->id));
	FUNC2(port->plat->rxq);
	FUNC2(FUNC1(port->id));
	FUNC2(port->plat->txreadyq);

	if (!ports_open)
		FUNC2(TXDONE_QUEUE);
}