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
struct net_device {int dummy; } ;
struct ethtool_regs {int /*<<< orphan*/  len; int /*<<< orphan*/  version; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct usbnet*) ; 
 struct usbnet* FUNC2 (struct net_device*) ; 

__attribute__((used)) static void FUNC3(struct net_device *net, struct ethtool_regs *regs, void *data)
{
	struct usbnet *dev = FUNC2(net);

	regs->version = FUNC1(dev);
	FUNC0(dev, 0, regs->len, data);
}