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
struct vnet_port {int tso; scalar_t__ vsw; scalar_t__ tsolen; scalar_t__ rmtu; int /*<<< orphan*/  clean_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct vnet_port*) ; 

void FUNC2(struct vnet_port *port)
{
	FUNC0(&port->clean_timer);
	FUNC1(port);
	port->rmtu = 0;
	port->tso = (port->vsw == 0);  /* no tso in vsw, misbehaves in bridge */
	port->tsolen = 0;
}