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
struct usbnet {int dummy; } ;
struct net_device {int mtu; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC1 (struct usbnet*,scalar_t__) ; 
 struct usbnet* FUNC2 (struct net_device*) ; 

int FUNC3(struct net_device *net, int new_mtu)
{
	struct usbnet *dev = FUNC2(net);

	net->mtu = new_mtu;
	FUNC1(dev, new_mtu + FUNC0(dev));

	return 0;
}