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
typedef  scalar_t__ u_long ;
struct pcmcia_device {struct net_device* priv; } ;
struct net_device {int dummy; } ;
struct hostap_interface {TYPE_1__* local; } ;
struct TYPE_2__ {int shutdown; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_FLOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct hostap_interface* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(u_long arg)
{
	struct pcmcia_device *link = (struct pcmcia_device *)arg;

	FUNC0(DEBUG_FLOW, "prism2_release\n");

	if (link->priv) {
		struct net_device *dev = link->priv;
		struct hostap_interface *iface;

		iface = FUNC1(dev);
		FUNC3(dev, 0);
		iface->local->shutdown = 1;
	}

	FUNC2(link);
	FUNC0(DEBUG_FLOW, "release - done\n");
}