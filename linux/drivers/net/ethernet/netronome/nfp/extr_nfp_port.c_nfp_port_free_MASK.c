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
struct nfp_port {int /*<<< orphan*/  port_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfp_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct nfp_port *port)
{
	if (!port)
		return;
	FUNC1(&port->port_list);
	FUNC0(port);
}