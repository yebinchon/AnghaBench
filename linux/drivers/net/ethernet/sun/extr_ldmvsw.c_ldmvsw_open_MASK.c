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
struct vio_driver_state {int dummy; } ;
struct vnet_port {struct vio_driver_state vio; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LDC_EVENT_RESET ; 
 struct vnet_port* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct vio_driver_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vio_driver_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnet_port*) ; 

int FUNC4(struct net_device *dev)
{
	struct vnet_port *port = FUNC0(dev);
	struct vio_driver_state *vio = &port->vio;

	/* reset the channel */
	FUNC1(vio, LDC_EVENT_RESET);
	FUNC3(port);
	FUNC2(vio);

	return 0;
}