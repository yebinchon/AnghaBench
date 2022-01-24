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
struct usbnet {int /*<<< orphan*/  flags; int /*<<< orphan*/  data; } ;
struct qmi_wwan_state {int flags; } ;
struct net_device {int flags; int /*<<< orphan*/  mtu; int /*<<< orphan*/ * header_ops; scalar_t__ addr_len; scalar_t__ hard_header_len; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARPHRD_NONE ; 
 int /*<<< orphan*/  EVENT_NO_IP_ALIGN ; 
 int IFF_MULTICAST ; 
 int IFF_NOARP ; 
 int IFF_POINTOPOINT ; 
 int QMI_WWAN_FLAG_RAWIP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*) ; 
 struct usbnet* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct net_device *net)
{
	struct usbnet *dev = FUNC3(net);
	struct qmi_wwan_state *info = (void *)&dev->data;

	if (info->flags & QMI_WWAN_FLAG_RAWIP) {
		net->header_ops      = NULL;  /* No header */
		net->type            = ARPHRD_NONE;
		net->hard_header_len = 0;
		net->addr_len        = 0;
		net->flags           = IFF_POINTOPOINT | IFF_NOARP | IFF_MULTICAST;
		FUNC4(EVENT_NO_IP_ALIGN, &dev->flags);
		FUNC2(net, "mode: raw IP\n");
	} else if (!net->header_ops) { /* don't bother if already set */
		FUNC1(net);
		FUNC0(EVENT_NO_IP_ALIGN, &dev->flags);
		FUNC2(net, "mode: Ethernet\n");
	}

	/* recalculate buffers after changing hard_header_len */
	FUNC5(net, net->mtu);
}