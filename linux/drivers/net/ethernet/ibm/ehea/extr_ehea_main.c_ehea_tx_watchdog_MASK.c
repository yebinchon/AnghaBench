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
struct net_device {int dummy; } ;
struct ehea_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  __EHEA_STOP_XFER ; 
 int /*<<< orphan*/  ehea_driver_flags ; 
 int /*<<< orphan*/  FUNC0 (struct ehea_port*) ; 
 struct ehea_port* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	struct ehea_port *port = FUNC1(dev);

	if (FUNC2(dev) &&
	    !FUNC3(__EHEA_STOP_XFER, &ehea_driver_flags))
		FUNC0(port);
}