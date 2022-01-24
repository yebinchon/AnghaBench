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
struct ehea_port {int /*<<< orphan*/  netdev; int /*<<< orphan*/  mc_list; int /*<<< orphan*/  stats_work; int /*<<< orphan*/  reset_task; struct ehea_adapter* adapter; } ;
struct ehea_adapter {int /*<<< orphan*/  active_ports; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ehea_port*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct ehea_port *port)
{
	struct ehea_adapter *adapter = port->adapter;

	FUNC1(&port->reset_task);
	FUNC0(&port->stats_work);
	FUNC5(port->netdev);
	FUNC2(port);
	FUNC4(port->mc_list);
	FUNC3(port->netdev);
	adapter->active_ports--;
}