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
struct mvpp2_port {TYPE_1__* priv; } ;
struct TYPE_2__ {scalar_t__ percpu_pools; } ;

/* Variables and functions */
 int FUNC0 (struct mvpp2_port*) ; 
 int FUNC1 (struct mvpp2_port*) ; 

__attribute__((used)) static int FUNC2(struct mvpp2_port *port)
{
	if (port->priv->percpu_pools)
		return FUNC0(port);
	else
		return FUNC1(port);
}