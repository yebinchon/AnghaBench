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
struct slave {scalar_t__ link; } ;
struct port {struct slave* slave; } ;

/* Variables and functions */
 scalar_t__ BOND_LINK_UP ; 
 int /*<<< orphan*/  BOND_SLAVE_NOTIFY_LATER ; 
 int /*<<< orphan*/  FUNC0 (struct slave*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct slave*) ; 

__attribute__((used)) static inline void FUNC2(struct port *port)
{
	struct slave *slave = port->slave;

	if ((slave->link == BOND_LINK_UP) && FUNC1(slave))
		FUNC0(slave, BOND_SLAVE_NOTIFY_LATER);
}