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
struct rocker_port {int /*<<< orphan*/  dev; } ;
struct rocker {int port_count; struct rocker_port** ports; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rocker_port**) ; 
 int /*<<< orphan*/  FUNC2 (struct rocker*) ; 
 int /*<<< orphan*/  FUNC3 (struct rocker_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct rocker_port*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct rocker *rocker)
{
	struct rocker_port *rocker_port;
	int i;

	for (i = 0; i < rocker->port_count; i++) {
		rocker_port = rocker->ports[i];
		if (!rocker_port)
			continue;
		FUNC3(rocker_port);
		FUNC5(rocker_port->dev);
		FUNC4(rocker_port);
		FUNC0(rocker_port->dev);
	}
	FUNC2(rocker);
	FUNC1(rocker->ports);
}