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
struct devlink_port {int dummy; } ;
struct nsim_dev_port {int /*<<< orphan*/  ns; int /*<<< orphan*/  list; struct devlink_port devlink_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct devlink_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct devlink_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct nsim_dev_port*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nsim_dev_port*) ; 

__attribute__((used)) static void FUNC6(struct nsim_dev_port *nsim_dev_port)
{
	struct devlink_port *devlink_port = &nsim_dev_port->devlink_port;

	FUNC3(&nsim_dev_port->list);
	FUNC0(devlink_port);
	FUNC4(nsim_dev_port->ns);
	FUNC5(nsim_dev_port);
	FUNC1(devlink_port);
	FUNC2(nsim_dev_port);
}