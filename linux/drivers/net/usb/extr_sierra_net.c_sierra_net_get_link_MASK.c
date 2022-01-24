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
typedef  int u32 ;
struct usbnet {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ link_up; } ;

/* Variables and functions */
 struct usbnet* FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 TYPE_1__* FUNC2 (struct usbnet*) ; 

__attribute__((used)) static u32 FUNC3(struct net_device *net)
{
	struct usbnet *dev = FUNC0(net);
	/* Report link is down whenever the interface is down */
	return FUNC2(dev)->link_up && FUNC1(net);
}