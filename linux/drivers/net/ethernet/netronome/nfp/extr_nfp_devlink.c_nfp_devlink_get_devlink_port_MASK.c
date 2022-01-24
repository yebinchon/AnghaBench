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
struct nfp_port {struct devlink_port dl_port; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 struct nfp_port* FUNC0 (struct net_device*) ; 

struct devlink_port *FUNC1(struct net_device *netdev)
{
	struct nfp_port *port;

	port = FUNC0(netdev);
	if (!port)
		return NULL;

	return &port->dl_port;
}