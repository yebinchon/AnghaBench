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
struct rocker_port {TYPE_1__* dev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int flags; int proto_down; } ;

/* Variables and functions */
 int IFF_UP ; 
 struct rocker_port* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct rocker_port*,int) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev,
					 bool proto_down)
{
	struct rocker_port *rocker_port = FUNC0(dev);

	if (rocker_port->dev->flags & IFF_UP)
		FUNC1(rocker_port, !proto_down);
	rocker_port->dev->proto_down = proto_down;
	return 0;
}