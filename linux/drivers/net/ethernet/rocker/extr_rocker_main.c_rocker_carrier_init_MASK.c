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
typedef  int u64 ;
struct rocker_port {int pport; int /*<<< orphan*/  dev; struct rocker* rocker; } ;
struct rocker {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PORT_PHYS_LINK_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rocker const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(const struct rocker_port *rocker_port)
{
	const struct rocker *rocker = rocker_port->rocker;
	u64 link_status = FUNC2(rocker, PORT_PHYS_LINK_STATUS);
	bool link_up;

	link_up = link_status & (1 << rocker_port->pport);
	if (link_up)
		FUNC1(rocker_port->dev);
	else
		FUNC0(rocker_port->dev);
}