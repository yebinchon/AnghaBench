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
struct mvpp2_port {scalar_t__ has_tx_irqs; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct mvpp2_port*,struct device_node*) ; 
 int FUNC1 (struct mvpp2_port*,struct device_node*) ; 

__attribute__((used)) static int FUNC2(struct mvpp2_port *port,
				    struct device_node *port_node)
{
	if (port->has_tx_irqs)
		return FUNC0(port, port_node);
	else
		return FUNC1(port, port_node);
}